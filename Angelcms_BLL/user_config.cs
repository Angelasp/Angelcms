using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Web;
using System.Web.Caching;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.BLL
{
    public partial class userconfig
    {
        private readonly DAL.userconfig dal = new DAL.userconfig();

        /// <summary>
        ///  读取用户配置文件
        /// </summary>
        public Age_userconfig loadConfig()
        {
            Age_userconfig model = CacheHelper.Get<Age_userconfig>(AgeKeys.CACHE_USER_CONFIG);
            if (model == null)
            {
                CacheHelper.Insert(AgeKeys.CACHE_USER_CONFIG, dal.loadConfig(Utils.GetXmlMapPath(AgeKeys.FILE_USER_XML_CONFING)),
                    Utils.GetXmlMapPath(AgeKeys.FILE_USER_XML_CONFING));
                model = CacheHelper.Get<Age_userconfig>(AgeKeys.CACHE_USER_CONFIG);
            }
            return model;
        }
        /// <summary>
        ///  保存用户配置文件
        /// </summary>
        public Age_userconfig saveConifg(Age_userconfig model)
        {
            return dal.saveConifg(model, Utils.GetXmlMapPath(AgeKeys.FILE_USER_XML_CONFING));
        }

    }
}
