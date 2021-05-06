using System;

namespace Angelcms_DBUtility
{

	
	/// <summary>
    /// 基本设置类
	/// </summary>
	public class DbConfigs
	{

        private static System.Timers.Timer baseConfigTimer = new System.Timers.Timer(60000);

        private static DbconfigInfo m_configinfo;

		/// <summary>
        /// 静态构造函数初始化相应实例和定时器
		/// </summary>
        static DbConfigs()
        {
            m_configinfo = DbconfigFileManager.LoadConfig();
            baseConfigTimer.AutoReset = true;
            baseConfigTimer.Enabled = true;
            baseConfigTimer.Elapsed += new System.Timers.ElapsedEventHandler(Timer_Elapsed); 
            baseConfigTimer.Start();
        }

        private static void Timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            ResetConfig();
        }


        /// <summary>
        /// 重设配置类实例
        /// </summary>
        public static void ResetConfig()
        {
            m_configinfo = DbconfigFileManager.LoadConfig();
        }


        /// <summary>
        /// 重设配置类实例
        /// </summary>
        public static void ResetRealConfig()
        {
            m_configinfo = DbconfigFileManager.LoadRealConfig();
        }

		public static DbconfigInfo GetBaseConfig()
		{
            return m_configinfo;
		}

		/// <summary>
		/// 返回数据库连接串
		/// </summary>
		public static string GetDBConnectString
		{
			get
			{
				return GetBaseConfig().Dbconnectstring;
			}
		}

		/// <summary>
		/// 返回表前缀
		/// </summary>
		public static string GetTablePrefix
		{
			get
			{
                 return GetBaseConfig().Tableprefix;
 			}
		}

		//得到论坛创建人ID
		public static int GetFounderUid
		{
			get
			{
				return GetBaseConfig().Founderuid;
			}
		}

        /// <summary>
        /// 返回路径
        /// </summary>
        public static string GetForumPath
        {
            get
            {
                return GetBaseConfig().Forumpath;
            }
        }

        /// <summary>
        /// 返回数据库类型
        /// </summary>
        public static string GetDbType
        {
            get
            {
                return GetBaseConfig().Dbtype;
            }
        }

        /// <summary>
        /// 保存配置实例
        /// </summary>
        /// <param name="baseconfiginfo"></param>
        /// <returns></returns>
        public static bool SaveConfig(DbconfigInfo baseconfiginfo)
        {
            DbconfigFileManager acfm = new DbconfigFileManager();
            DbconfigFileManager.ConfigInfo = baseconfiginfo;
            return acfm.SaveConfig();
        }
		
	}
}
