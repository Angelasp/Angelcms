using System;
using System.Collections.Generic;
using System.Collections;
using System.Web;
using System.Text;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Angelcms_Common;
using Angelcms_DBUtility;
using Angelcms.BLL;
using Angelcms.Model;
using Microsoft.SqlServer.Management.Common;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer;

namespace Angelcms_Web.install
{
    public class InstallUtils
    {

        public const string dbScriptPath = @"sqlscript\sqlserver\";//数据库脚本文件存放路径


        /// <summary>
        /// 返回系统环境检测结果
        /// </summary>
        /// <param name="error">是否有异常</param>
        /// <returns></returns>
        public static string InitialSystemValidCheck()
        {
            StringBuilder sb = new StringBuilder();
            HttpContext context = HttpContext.Current;
            string messageTemplate = "{{'result':'{0}','msg':'{1}'}},";

            string fileName = context != null ? context.Server.MapPath("/Angeldb.config") : Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Angeldb.config");

            //系统BIN目录检查
            sb.Append(IISSystemBINCheck());


            ////检查Angeldb.config文件的有效性
            if (!GetRootDntconfigPath())
            {
                sb.AppendFormat(messageTemplate, "false", "Angeldb.config不可写或没有放置正确, 相关问题详见安装文档!");
            }
            else
                sb.AppendFormat(messageTemplate, "true", "对 Angeldb.config 验证通过!");

            //检查系统目录的有效性
            string folderstr = "admin,aspx,scripts,tools,xmlconfig,editor,images,templates,upload";
            foreach (string foldler in folderstr.Split(','))
            {
                if (!SystemFolderCheck(foldler))
                {
                    sb.AppendFormat(messageTemplate, "false", "对 " + foldler + " 目录没有写入和删除权限!");
                }
                else
                    sb.AppendFormat(messageTemplate, "true", "对 " + foldler + " 目录权限验证通过!");
            }
            string filestr = "xmlconfig\\site.config,install\\systemfile.aspx";
            foreach (string file in filestr.Split(','))
            {
                if (!SystemFileCheck(file))
                {
                    sb.AppendFormat(messageTemplate, "false", "对 " + file.Substring(0, file.LastIndexOf('\\')) + " 目录没有写入和删除权限!");
                }
                else
                    sb.AppendFormat(messageTemplate, "true", "对 " + file.Substring(0, file.LastIndexOf('\\')) + " 目录权限验证通过!");
            }

            if (!TempTest())
            {
                sb.AppendFormat(messageTemplate, "false", "您没有开启对 " + Path.GetTempPath() + " 文件夹访问权限，详情参见安装文档.");
            }
            else
            {
                //if (!SerialiazeTest())
                //{
                //    sb.AppendFormat(messageTemplate, "false", "对config文件反序列化失败，详情参见安装文档.");
                //}
                //else
                //    sb.AppendFormat(messageTemplate, "true", "反序列化验证通过!");

            }
            return ("[" + sb.ToString().Trim(',') + "]").Replace("\\", "\\\\");
        }

        /// <summary>
        /// 返回Angeldb.config文件是否正确读取
        /// </summary>
        /// <returns></returns>
        public static bool GetRootDntconfigPath()
        {
            try
            {
                HttpContext context = HttpContext.Current;

                string webconfigfile = "";
                if (!FileExistsinstall(webconfigfile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Angeldb.config"))
                    && (!FileExistsinstall(webconfigfile = GetMapPathInstall("~/Angeldb.config")))
                    && (!FileExistsinstall(webconfigfile = Path.Combine(context.Request.PhysicalApplicationPath, "Angeldb.config")))
                    && (!FileExistsinstall(webconfigfile = GetMapPathInstall("../Angeldb.config")))
                    && (!FileExistsinstall(webconfigfile = GetMapPathInstall("../../Angeldb.config")))
                    && (!FileExistsinstall(webconfigfile = GetMapPathInstall("../../../Angeldb.config"))))
                {
                    return false;
                }
                else
                {
                    StreamReader sr = new StreamReader(webconfigfile);
                    string content = sr.ReadToEnd();
                    sr.Close();
                    content += " ";
                    StreamWriter sw = new StreamWriter(webconfigfile, false);
                    sw.Write(content);
                    sw.Close();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }



        /// <summary>
        /// 返回文件是否存在
        /// </summary>
        /// <param name="filename">文件名</param>
        /// <returns>是否存在</returns>
        public static bool FileExistsinstall(string filename)
        {
            return System.IO.File.Exists(filename);
        }


        /// <summary>
        /// 获得当前绝对路径
        /// </summary>
        /// <param name="strPath">指定的路径</param>
        /// <returns>绝对路径</returns>
        public static string GetMapPathInstall(string strPath)
        {
            if (HttpContext.Current != null)
            {
                return HttpContext.Current.Server.MapPath(strPath);
            }
            else //非web程序引用
            {
                strPath = strPath.Replace("/", "\\");
                if (strPath.StartsWith("\\"))
                {
                    strPath = strPath.Substring(strPath.IndexOf('\\', 1)).TrimStart('\\');
                }
                return System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, strPath);
            }
        }

        /// <summary>
        /// 检测目录是否有读写权限
        /// </summary>
        /// <returns></returns>
        public static bool SystemRootCheck()
        {
            HttpContext context = HttpContext.Current;

            string physicsPath = context != null ? context.Server.MapPath("/") : AppDomain.CurrentDomain.BaseDirectory;
            try
            {
                using (FileStream fs = new FileStream(physicsPath + "\\a.txt", FileMode.Create, FileAccess.ReadWrite, FileShare.ReadWrite))
                {
                    fs.Close();
                }
                System.IO.File.Delete(physicsPath + "\\a.txt");
                return true;
            }
            catch
            {
                return false;
            }

        }

        /// <summary>
        /// 返回bin文件的检测结果
        /// </summary>
        /// <param name="error"></param>
        /// <returns></returns>
        public static string IISSystemBINCheck()
        {
            string binfolderpath = HttpRuntime.BinDirectory;
            string messageTemplate = "{{'result':'{0}','msg':'{1}'}},";

            string result = "";
            try
            {
                string[] assemblylist = new string[] { "Angelcms_BLL.dll", "Angelcms_Common.dll", "Angelcms_DAL.dll", "Angelcms_DBUtility.dll", 
                "Angelcms_Model.dll", "Angelcms_oauth.dll", "Angelcms_Web.dll","Angelcms_Web.UI.dll","LitJSON.dll"  };
                bool isAssemblyInexistence = false;
                ArrayList inexistenceAssemblyList = new ArrayList();
                foreach (string assembly in assemblylist)
                {
                    if (!File.Exists(binfolderpath + assembly))
                    {
                        isAssemblyInexistence = true;
                        inexistenceAssemblyList.Add(assembly);
                    }
                }
                if (isAssemblyInexistence)
                {
                    foreach (string assembly in inexistenceAssemblyList)
                    {
                        result += string.Format(messageTemplate, "false", assembly + " 文件放置不正确,请将所有的dll文件复制到目录" + binfolderpath + " 中.");
                    }
                }
            }
            catch
            {
                result += string.Format(messageTemplate, "false", "请将所有的dll文件复制到目录 " + binfolderpath + " 中.");
            }
            return result;
        }

        /// <summary>
        /// 检测指定目录是否有读写权限
        /// </summary>
        /// <param name="foldername"></param>
        /// <returns></returns>
        public static bool SystemFolderCheck(string foldername)
        {
            string physicsPath = GetMapPathInstall(@"..\" + foldername);
            try
            {
                using (FileStream fs = new FileStream(physicsPath + "\\a.txt", FileMode.Create, FileAccess.ReadWrite, FileShare.ReadWrite))
                {
                    fs.Close();
                }
                if (File.Exists(physicsPath + "\\a.txt"))
                {
                    System.IO.File.Delete(physicsPath + "\\a.txt");
                    return true;
                }
                else
                    return false;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// 检测是否有操作文件的权限
        /// </summary>
        /// <param name="filename"></param>
        /// <returns></returns>
        public static bool SystemFileCheck(string filename)
        {
            filename = GetMapPathInstall(@"..\" + filename);
            try
            {
                if (filename.IndexOf("systemfile.aspx") == -1 && !File.Exists(filename))
                    return false;
                if (filename.IndexOf("systemfile.aspx") != -1)  //做删除测试
                {
                    File.Delete(filename);
                    return true;
                }
                StreamReader sr = new StreamReader(filename);
                string content = sr.ReadToEnd();
                sr.Close();
                content += " ";
                StreamWriter sw = new StreamWriter(filename, false);
                sw.Write(content);
                sw.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

        ///// <summary>
        ///// 配置文件反序列化检测
        ///// </summary>
        ///// <returns></returns>
        //private static bool SerialiazeTest()
        //{
        //    try
        //    {
        //        string configPath = HttpContext.Current.Server.MapPath("../config/general.config");
        //        GeneralConfigInfo __configinfo = GeneralConfigs.Deserialize(configPath);
        //        __configinfo.Passwordkey = ForumUtils.CreateAuthStr(10);
        //        SerializationHelper.Save(__configinfo, configPath);
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}




        /// <summary>
        /// 服务器temp目录权限检测
        /// </summary>
        /// <returns></returns>
        public static bool TempTest()
        {
            string UserGuid = Guid.NewGuid().ToString();
            string TempPath = Path.GetTempPath();
            string path = TempPath + UserGuid;
            try
            {
                using (StreamWriter sw = new StreamWriter(path))
                {
                    sw.WriteLine(DateTime.Now);
                }

                using (StreamReader sr = new StreamReader(path))
                {
                    sr.ReadLine();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }

        ///// <summary>
        ///// 创建表和相关索引，约束
        ///// </summary>
        ///// <returns></returns>
        //public static string CreateTable()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    using (StreamReader objReader = new StreamReader(GetMapPathInstall(dbScriptPath + "setup1.sql"), Encoding.UTF8))
        //    {
        //        sb.Append(objReader.ReadToEnd());
        //        objReader.Close();
        //    }
        //    ExecuteSqlFile(connection, sb.ToString());  

        //    return "{result:true,message:1}";
        //}





        /// <summary>
        /// 创建表和相关索引，约束
        /// </summary>
        /// <returns></returns>
        public static string CreateTable()
        {
            ExecuteSqlFile(connection, GetMapPathInstall(dbScriptPath + "setup1.sql"));
            return "{result:true,message:1}";
        }



        /// <summary>
        /// 执行sql文件
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="FilePath"></param>
        /// <returns></returns>
        public static bool ExecuteSqlFile(SqlConnection conn, string FilePath)
        {
            if (!File.Exists(FilePath)) { return false; }
            StreamReader sr = File.OpenText(FilePath);
            ArrayList alSql = new ArrayList();
            string commandText = "";
            string varLine = "";
            while (sr.Peek() > -1)
            {
                varLine = sr.ReadLine();
                if (varLine == "")
                { continue; }
                if (varLine != "GO")
                {
                    commandText += varLine;
                    commandText += "\r\n";
                }
                else
                {
                    alSql.Add(commandText);
                    commandText = "";
                }
            }
            sr.Close();
            try
            {
                ExecuteCommand(conn, alSql);
            }
            catch
            {
                return false;
            }

            return true;
        }
        /// <summary>
        /// 执行list语句
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="varSqlList"></param>
        private static void ExecuteCommand(SqlConnection conn, ArrayList varSqlList)
        {
            conn.Open();
            SqlTransaction varTrans = conn.BeginTransaction();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.Transaction = varTrans;
            try
            {
                foreach (string varcommandText in varSqlList)
                {
                    command.CommandText = varcommandText;
                    command.ExecuteNonQuery();
                }
                varTrans.Commit();
            }
            catch (Exception ex)
            {
                varTrans.Rollback(); throw ex;
            }
            finally
            {
                conn.Close();
            }
        }





        /// <summary>
        /// 执行插入语句
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="varSqlList"></param>
        private static void ExecuteInsertCommand(SqlConnection conn, string filepath)
        {
            conn.Open();
            FileInfo file = new FileInfo(filepath);
            string script = file.OpenText().ReadToEnd();
            Server server = new Server(new ServerConnection(conn));
            server.ConnectionContext.ExecuteNonQuery(script);
            conn.Close();
        }


        ///// <summary>
        ///// 创建存储过程
        ///// </summary>
        ///// <returns></returns>
        //public static string CreateStorePocedure()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    string sqlServerVersion = DbHelper.ExecuteScalar(CommandType.Text, "SELECT @@VERSION").ToString().Substring(20, 24).Trim();
        //    if (sqlServerVersion.IndexOf("2000") >= 0)
        //    {
        //        using (StreamReader objReader = new StreamReader(GetMapPathInstall(dbScriptPath + "setup2.2.sql"), Encoding.UTF8))
        //        {
        //            sb.Append(objReader.ReadToEnd());
        //            objReader.Close();
        //        }
        //    }
        //    else
        //    {
        //        using (StreamReader objReader = new StreamReader(GetMapPathInstall(dbScriptPath + "setup2.2 - 2005.sql"), Encoding.UTF8))
        //        {
        //            sb.Append(objReader.ReadToEnd());
        //            objReader.Close();
        //        }
        //    }
        //    if (BaseConfigs.GetTablePrefix.ToLower() == "dnt_")
        //        DbHelper.ExecuteCommandWithSplitter(sb.ToString().Trim().Replace("\"", "'"));
        //    else
        //        DbHelper.ExecuteCommandWithSplitter(sb.ToString().Trim().Replace("\"", "'").Replace("dnt_", BaseConfigs.GetTablePrefix));

        //    return "{result:true,message:\"" + sqlServerVersion + "\"}";
        //}

        /// <summary>
        /// 初始化起始数据
        /// </summary>
        /// <param name="adminName"></param>
        /// <param name="adminPassword"></param>
        /// <returns></returns>
        public static string InitialForumSource(string adminName, string adminPassword)
        {
            try
            {
                ExecuteInsertCommand(connection, GetMapPathInstall(dbScriptPath + "setup2.sql"));
                //获得6位的salt加密字符串
                string salt = Utils.GetCheckCode(6);
                string adminPasswordupdate = DESEncrypt.Encrypt(adminPassword, salt);
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = string.Format("INSERT [Age_manager] ([role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, '{0}', '{1}', '{2}', '超级管理员', '13800138000', 'Angel_asp@126.com', 0, '" + DateTime.Now + "')", adminName, adminPasswordupdate, salt);
                command.ExecuteNonQuery();
                connection.Close();
                return "{result:true,message:\"数据初始化完毕\"}";

            }
            catch (Exception e)
            {
                return "{result:false,message:\"初始化过程出现错误(" + JsonCharFilter(e.Message) + ")\"}";
            }
        }

        /// <summary>
        /// 将用户填写的数据库信息写入Angeldb.config文件
        /// </summary>
        /// <param name="dataSource">数据库地址</param>
        /// <param name="userID">数据库账号</param>
        /// <param name="password">数据库账号密码</param>
        /// <param name="databaseName">数据库名</param>
        /// <param name="tablePrefix">表前缀</param>
        public static void EditAngeldbConfig(string dataSource, string userID, string password, string databaseName, string tablePrefix)
        {
            DbconfigInfo baseConfig = DbConfigs.GetBaseConfig();
            string connectionString = string.Format(@"Data Source={0};User ID={1};Password={2};Initial Catalog={3};Pooling=true",
                                             dataSource, userID, password, databaseName);
            baseConfig.Dbconnectstring = connectionString;
            baseConfig.Tableprefix = tablePrefix;
            baseConfig.Dbtype = "SqlServer";
            string dntPath = GetMapPathInstall("~/Angeldb.config");
            if (!FileExistsinstall(dntPath))
            {
                dntPath = GetMapPathInstall("/Angeldb.config");
            }
            SerializationHelper1.Save(baseConfig, dntPath);

        }

        /// <summary>
        /// 自动检查当前程序的目录状态并保存
        /// </summary>
        /// <param name="forumPath"></param>
        public static void SaveDntConfigForumPath()
        {
            HttpRequest request = HttpContext.Current.Request;

            string forumPath = request.Url.ToString().Replace("http://" + request.Url.Authority, "");

            if (forumPath.IndexOf("install") < 0)
            {
                return;
            }

            forumPath = forumPath.Substring(0, forumPath.IndexOf("install"));
            DbconfigInfo baseConfig = DbConfigs.GetBaseConfig();
            if (baseConfig.Forumpath.Trim() != forumPath)
            {
                baseConfig.Forumpath = forumPath;
                string dntPath = GetMapPathInstall("~/Angeldb.config");
                if (!FileExistsinstall(dntPath))
                {
                    dntPath = GetMapPathInstall("/Angeldb.config");
                }
                SerializationHelper1.Save(baseConfig, dntPath);
                DbConfigs.ResetRealConfig();
            }
        }



        public static SqlConnection connection = new SqlConnection();

        public static string JsonCharFilter(string sourceStr)
        {
            sourceStr = sourceStr.Replace("\\", "");
            sourceStr = sourceStr.Replace("\b", "");
            sourceStr = sourceStr.Replace("\t", "");
            sourceStr = sourceStr.Replace("\n", "");
            sourceStr = sourceStr.Replace("\f", "");
            sourceStr = sourceStr.Replace("\r", "");
            sourceStr = sourceStr.Replace("'", "\\'");
            return sourceStr.Replace("\"", "\\\"");
        }

        /// <summary>
        /// 测试用户填写的数据库信息是否正确
        /// </summary>
        /// <returns>false:数据库用户名或密码错误</returns>
        public static string CheckDBConnection(string sqlIp, string sqlUsername, string sqlPassword, string dbName)
        {
            string result = "";
            dbName = string.IsNullOrEmpty(dbName) ? "master" : dbName;
            try
            {
                connection.ConnectionString = string.Format(@"Data Source={0};User ID={1};Password={2};Initial Catalog={3};Pooling=false",
                                                  sqlIp, sqlUsername, sqlPassword, dbName);
                connection.Open();
            }
            catch (SqlException e)
            {
                result = "{result:false,message:\"" + JsonCharFilter(e.Message) + "\",code:\"" + e.Number + "\"}";
            }
            finally
            {
                connection.Close();
            }
            return string.IsNullOrEmpty(result) ? "{result:true,message:\"连接成功\"}" : result.Replace("'", "\'");
        }

        public static string CheckDBCollation(string sqlIp, string sqlUsername, string sqlPassword, string dbName)
        {
            string result = "";
            try
            {
                string dbCollation = GetDBDefaultCollation(string.Format(@"Data Source={0};User ID={1};Password={2};Initial Catalog={3};Pooling=false",
                                                      sqlIp, sqlUsername, sqlPassword, dbName), dbName);
                if (dbCollation.IndexOf("Chinese_PRC") < 0)
                    result = "{result:false,message:\"数据库排序规则不是简体中文,请调整为简体中文后重新运行安装程序\"}";
            }
            catch (SqlException e)
            {
                result = "{result:false,message:\"" + JsonCharFilter(e.Message) + "\",code:\"" + e.Number + "\"}";
            }

            return string.IsNullOrEmpty(result) ? "{result:true,message:\"字符集检测完毕\"}" : result.Replace("'", "\'");

        }

        /// <summary>
        /// 执行SQL语句，用来测试指定数据库是否存在
        /// </summary>
        /// <param name="commandText">t-sql</param>
        public static void ExcuteSQL(string commandText, string connectionString)
        {
            SqlCommand sqlCommand = new SqlCommand();
            try
            {
                if (connection.State == ConnectionState.Open)
                    connection.Close();
                connection.ConnectionString = connectionString;
                connection.Open();
                sqlCommand = new SqlCommand(commandText, connection);
                sqlCommand.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            finally
            {
                sqlCommand.Connection.Close();
            }
        }

        public static string DBSourceExist(string sqlIp, string sqlUsername, string sqlPassword, string dbName, string tablePrefix)
        {
            string result = "";
            try
            {
                ExcuteSQL("SELECT COUNT(1) FROM [" + tablePrefix + "users]", string.Format(@"Data Source={0};User ID={1};Password={2};Initial Catalog={3};Pooling=false",
                                                      sqlIp, sqlUsername, sqlPassword, dbName));
            }
            catch (SqlException e)
            {
                result = "{result:false,message:\"" + JsonCharFilter(e.Message) + "\",code:\"" + e.Number + "\"}";
            }

            return string.IsNullOrEmpty(result) ? "{result:true,message:\"数据库已存在\",code:0}" : result.Replace("'", "\'");
        }

        /// <summary>
        /// 检测数据库版本
        /// </summary>
        /// <param name="commandText">t-sql</param>
        /// <param name="connectionString">数据库连接串</param>
        public static string GetSqlVersion(string connectionString)
        {
            if (connection.State == ConnectionState.Open)
                connection.Close();
            connection.ConnectionString = connectionString;
            connection.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT @@VERSION", connection);
            string sqlVersion = sqlCommand.ExecuteScalar().ToString().Trim();
            sqlCommand.Connection.Close();
            return sqlVersion;
        }

        public static string GetDBDefaultCollation(string connectionString, string dbName)
        {
            if (connection.State == ConnectionState.Open)
                connection.Close();
            connection.ConnectionString = connectionString;
            connection.Open();
            SqlCommand sqlCommand = new SqlCommand(string.Format("SELECT DATABASEPROPERTYEX('{0}', 'Collation')", dbName), connection);
            string collation = sqlCommand.ExecuteScalar().ToString().Trim();
            sqlCommand.Connection.Close();
            return collation;
        }

        /// <summary>
        /// 创建数据库
        /// </summary>
        public static string CreateDatabase(string sqlIp, string sqlManager, string sqlManagerPassword, string sqlName)
        {
            string connectionString = string.Format(@"Data Source={0};User ID={1};Password={2};Initial Catalog={3};Pooling=false",
                                                  sqlIp, sqlManager, sqlManagerPassword, "master");
            string commandText = string.Format("CREATE DATABASE [{0}]", sqlName);
            try
            {
                //  ExcuteSQL(string.Format("DROP DATABASE [{0}]", sqlName), connectionString);//执行创建数据库的TSQL；
                ExcuteSQL(commandText, connectionString);//执行创建数据库的TSQL；
                return "{result:true,message:\"数据库创建成功\"}";
            }
            catch (SqlException e)
            {
                return "{result:false,message:\"" + JsonCharFilter(e.Message) + "\",code:\"" + e.Number + "\"}";
            }
        }
    }
}