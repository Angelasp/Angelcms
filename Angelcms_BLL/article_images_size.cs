using System;
using System.Collections.Generic;
using System.Text;
using Angelcms.Model;

namespace Angelcms.BLL
{
    public class article_images_size
    {
        private readonly Age_siteconfig siteConfig = new BLL.siteconfig().loadConfig(); //获得站点配置信息
        private readonly DAL.article_images_size dal;

        public article_images_size()
		{
            dal = new DAL.article_images_size(siteConfig.sysdatabaseprefix);
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public List<Age_article_images_size> GetCategoryImageSizeById(int category_id)
        {
            return dal.GetCategoryImageSizeById(category_id);
        }
    }
}
