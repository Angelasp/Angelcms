using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.DAL
{
    /// <summary>
    /// 数据访问类:站点配置
    /// </summary>
    public partial class siteconfig
    {
        private static object lockHelper = new object();

        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        public Age_siteconfig loadConfig(string configFilePath)
        {
            return (Age_siteconfig)SerializationHelper.Load(typeof(Age_siteconfig), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        public Age_siteconfig saveConifg(Age_siteconfig model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }

    }
}
