using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.IO;

namespace Angelcms_DBUtility
{
    /// <summary>
    /// 基本设置信息管理类
    /// </summary>
    class DbconfigFileManager : Angelcms_DBUtility.DefaultConfigFileManager
    {
        private static DbconfigInfo m_configinfo;

        /// <summary>
        /// 锁对象
        /// </summary>
        private static object m_lockHelper = new object();

        /// <summary>
        /// 文件修改时间
        /// </summary>
        private static DateTime m_fileoldchange;




        /// <summary>
        /// 初始化文件修改时间和对象实例
        /// </summary>
        static DbconfigFileManager()
        {
            m_fileoldchange = System.IO.File.GetLastWriteTime(ConfigFilePath);
            m_configinfo = (DbconfigInfo)DefaultConfigFileManager.DeserializeInfo(ConfigFilePath, typeof(DbconfigInfo));
        }

        /// <summary>
        /// 当前配置类的实例
        /// </summary>
        public new static IConfigInfo ConfigInfo
        {
            get { return m_configinfo; }
            set { m_configinfo = (DbconfigInfo)value; }
        }



        /// <summary>
        /// 配置文件所在路径
        /// </summary>
        public static string filename = null;


        /// <summary>
        /// 获取配置文件所在路径
        /// </summary>
        public new static string ConfigFilePath
        {
            get
            {
                if (filename == null)
                {
                    HttpContext context = HttpContext.Current;
                    if (context != null)
                    {
                        filename = context.Server.MapPath("~/Angeldb.config");
                        if (!File.Exists(filename))
                        {
                            filename = context.Server.MapPath("/Angeldb.config");
                        }
                    }
                    else
                    {
                        filename = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Angeldb.config");
                    }

                    if (!File.Exists(filename))
                    {
                        throw new Exception("发生错误: 虚拟目录或网站根目录下没有正确的Angeldb.config文件");
                    }
                }
                return filename;
            }

        }

        /// <summary>
        /// 加载配置类
        /// </summary>
        /// <returns></returns>
        public static DbconfigInfo LoadConfig()
        {
            ConfigInfo = DefaultConfigFileManager.LoadConfig(ref m_fileoldchange, ConfigFilePath, ConfigInfo);
            return ConfigInfo as DbconfigInfo;
        }

        /// <summary>
        /// 加载真正有效的配置类
        /// </summary>
        /// <returns></returns>
        public static DbconfigInfo LoadRealConfig()
        {
            ConfigInfo = DefaultConfigFileManager.LoadConfig(ref m_fileoldchange, ConfigFilePath, ConfigInfo, false);
            return ConfigInfo as DbconfigInfo;
        }

        /// <summary>
        /// 保存配置
        /// </summary>
        /// <returns></returns>
        public override bool SaveConfig()
        {
            return base.SaveConfig(ConfigFilePath, ConfigInfo);
        }
    }
  }

