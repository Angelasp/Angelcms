using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.DAL
{
    public partial class orderconfig
    {
        private static object lockHelper = new object();

        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        public Age_orderconfig loadConfig(string configFilePath)
        {
            return (Age_orderconfig)SerializationHelper.Load(typeof(Age_orderconfig), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        public Age_orderconfig saveConifg(Age_orderconfig model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }

    }
}
