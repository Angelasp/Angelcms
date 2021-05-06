using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_DBUtility;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.DAL
{
    /// <summary>
    /// 数据访问类:会员配置
    /// </summary>
    public partial class userconfig
    {
        private static object lockHelper = new object();

        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        public Age_userconfig loadConfig(string configFilePath)
        {
            return (Age_userconfig)SerializationHelper.Load(typeof(Age_userconfig), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        public Age_userconfig saveConifg(Age_userconfig model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }

    }
}
