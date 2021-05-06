using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Web;
using System.Web.Caching;
using Angelcms_Common;
using Angelcms.DAL;
using Angelcms.Model;

namespace Angelcms.BLL
{
    public partial class siteconfig
    {
        private readonly DAL.siteconfig dal = new DAL.siteconfig();

        /// <summary>
        ///  读取配置文件
        /// </summary>
        public Age_siteconfig loadConfig()
        {
            Age_siteconfig model = CacheHelper.Get<Age_siteconfig>(AgeKeys.CACHE_SITE_CONFIG);
            if (model == null)
            {
                CacheHelper.Insert(AgeKeys.CACHE_SITE_CONFIG, dal.loadConfig(Utils.GetXmlMapPath(AgeKeys.FILE_SITE_XML_CONFING)),
                    Utils.GetXmlMapPath(AgeKeys.FILE_SITE_XML_CONFING));
                model = CacheHelper.Get<Age_siteconfig>(AgeKeys.CACHE_SITE_CONFIG);
            }
            return model;
        }

        /// <summary>
        ///  保存配置文件
        /// </summary>
        public Age_siteconfig saveConifg(Age_siteconfig model)
        {
            return dal.saveConifg(model, Utils.GetXmlMapPath(AgeKeys.FILE_SITE_XML_CONFING));
        }

    }
}
