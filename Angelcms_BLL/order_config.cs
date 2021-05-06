using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Web;
using System.Web.Caching;
using Angelcms.Model;
using Angelcms_Common;

namespace Angelcms.BLL
{
    public partial class orderconfig
    {
        private readonly DAL.orderconfig dal = new DAL.orderconfig();
        /// <summary>
        ///  读取用户配置文件
        /// </summary>
        public Age_orderconfig loadConfig()
        {
            Age_orderconfig model = CacheHelper.Get<Age_orderconfig>(AgeKeys.CACHE_ORDER_CONFIG);
            if (model == null)
            {
                CacheHelper.Insert(AgeKeys.CACHE_ORDER_CONFIG, dal.loadConfig(Utils.GetXmlMapPath(AgeKeys.FILE_ORDER_XML_CONFING)),
                    Utils.GetXmlMapPath(AgeKeys.FILE_ORDER_XML_CONFING));
                model = CacheHelper.Get<Age_orderconfig>(AgeKeys.CACHE_ORDER_CONFIG);
            }
            return model;
        }

        /// <summary>
        ///  保存用户配置文件
        /// </summary>
        public Age_orderconfig saveConifg(Age_orderconfig model)
        {
            return dal.saveConifg(model, Utils.GetXmlMapPath(AgeKeys.FILE_ORDER_XML_CONFING));
        }
    }
}
