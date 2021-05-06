using System;
using System.IO;
using System.Web;

namespace Angelcms_DBUtility.Provider
{
	public class BaseConfigProvider
	{
		private BaseConfigProvider()
		{
		}

		static BaseConfigProvider()
		{
			config = GetRealBaseConfig();
		}

		private static DbconfigInfo config = null;

		/// <summary>
		/// 获取基础配置实例
		/// </summary>
		/// <returns></returns>
        public static DbconfigInfo Instance()
		{
			return config;
		}

		/// <summary>
		/// 设置对象实例
		/// </summary>
		/// <param name="anConfig"></param>
        public static void SetInstance(DbconfigInfo anConfig)
		{
			if (anConfig == null)
				return;
			config = anConfig;
		}

		/// <summary>
		/// 获取真实基础配置对象
		/// </summary>
		/// <returns></returns>
        public static DbconfigInfo GetRealBaseConfig()
		{
            DbconfigInfo newBaseConfig = null;
            string filename = DbconfigFileManager.ConfigFilePath;
			try
			{
				newBaseConfig = (DbconfigInfo)SerializationHelper1.Load(typeof(DbconfigInfo), filename);
			}
			catch
			{
				newBaseConfig = null;
			}
			
			if (newBaseConfig == null)
			{
				try
				{
					DbconfigInfoCollection bcc = (DbconfigInfoCollection)SerializationHelper1.Load(typeof(DbconfigInfoCollection), filename);
					foreach (DbconfigInfo bc in bcc)
					{
						if (GetTrueForumPath() == bc.Forumpath)
						{
							newBaseConfig = bc;
							break;
						}
					}
					if (newBaseConfig == null)
					{
						DbconfigInfo rootConfig = null;
						foreach (DbconfigInfo bc in bcc)
						{
							if (GetTrueForumPath().StartsWith(bc.Forumpath) && bc.Forumpath != "/")
							{
								newBaseConfig = bc;
								break;
							}
							if (("/").Equals(bc.Forumpath))
							{
								rootConfig = bc;
							}
						}
						if (newBaseConfig == null)
						{
							newBaseConfig = rootConfig;
						}
					}

				}
				catch
				{
					newBaseConfig = null;
				}
			}
			if (newBaseConfig == null) 
			{
                throw new Exception("发生错误: 虚拟目录或网站根目录下没有正确的Angeldb.config文件，或者没有序列化权限");
			}
			return newBaseConfig;

		}


        /// <summary>
        /// 得到论坛的真实路径
        /// </summary>
        /// <returns></returns>
        public static string GetTrueForumPath()
        {
            string forumPath = HttpContext.Current.Request.Path;
            if (forumPath.LastIndexOf("/") != forumPath.IndexOf("/"))
                forumPath = forumPath.Substring(forumPath.IndexOf("/"), forumPath.LastIndexOf("/") + 1);
            else
                forumPath = "/";

            return forumPath;
        }




	}
}
