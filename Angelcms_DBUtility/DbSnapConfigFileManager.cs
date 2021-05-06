using System;
using Angelcms_Common;

namespace Angelcms_DBUtility
{
    class DbSnapConfigFileManager : DefaultConfigFileManager
    {
        private static DbSnapAppConfig m_dbSnapAppConfig;
        
        /// <summary>
        /// 文件修改时间
        /// </summary>
        private static DateTime m_fileoldchange;


        /// <summary>
        /// 配置文件所在路径
        /// </summary>
        public static string filename = null;

        /// <summary>
        /// 返回配置类实例
        /// </summary>
        /// <returns></returns>
        public static DbSnapAppConfig LoadConfig()
        {
            if (Utils.FileExists(ConfigFilePath))
                ConfigInfo = DefaultConfigFileManager.LoadConfig(ref m_fileoldchange, ConfigFilePath, ConfigInfo);

            return ConfigInfo as DbSnapAppConfig;

        }


        /// <summary>
        /// 保存配置类实例
        /// </summary>
        /// <returns></returns>
        public override bool SaveConfig()
        {
            return base.SaveConfig(ConfigFilePath, ConfigInfo);
        }
    }
}
