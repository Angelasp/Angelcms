using System;
using System.Collections.Generic;
using System.Web;
using Angelcms_Common;

namespace Angelcms_Web.install
{
    /// <summary>
    /// ajax 的摘要说明
    /// </summary>
    public class ajax : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";


            string t = AgeRequest.GetString("t");
            string sqlIp = AgeRequest.GetString("ip");
            string sqlName = AgeRequest.GetString("name");
            string sqlLoginName = AgeRequest.GetString("loginname");
            string sqlLoginAuth = AgeRequest.GetString("loginpwd");
            string tablePrefix = AgeRequest.GetString("prefix");

            string result = "";

            switch (t)
            {
                case "checkdbconnection"://检查数据库连接
                    result = InstallUtils.CheckDBConnection(sqlIp, sqlLoginName, sqlLoginAuth, sqlName);
                    break;
                case "createdb"://创建新的数据库
                    result = InstallUtils.CreateDatabase(sqlIp, sqlLoginName, sqlLoginAuth, sqlName);
                    break;
                case "checkdbcollation"://检查数据库排序规则
                    result = InstallUtils.CheckDBCollation(sqlIp, sqlLoginName, sqlLoginAuth, sqlName);
                    break;
                case "dbsourceexist":
                    result = InstallUtils.DBSourceExist(sqlIp, sqlLoginName, sqlLoginAuth, sqlName, tablePrefix);
                    break;
                case "savedbset"://保存数据库配置
                    InstallUtils.EditAngeldbConfig(sqlIp, sqlLoginName, sqlLoginAuth, sqlName, tablePrefix);
                    result = "{result:true,message:\"配置保存成功\"}";
                    break;
                case "createtable"://创建Angelcms数据表
                    result = InstallUtils.CreateTable();
                    break;
                //case "createsp"://创建Angelcms存储过程
                //    result = InstallUtils.CreateStorePocedure();
                //    break;
                case "initsource"://生成初始数据
                    result = InstallUtils.InitialForumSource(AgeRequest.GetString("admin"), AgeRequest.GetString("pwd"));
                    break;
            }
            context.Response.Write(result);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}