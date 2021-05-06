using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.UI.Page
{
    public partial class article_list : Web.UI.BasePage
    {
        protected int page;         //当前页码
        protected int category_id;  //类别ID
        protected int totalcount;   //OUT数据总数
        protected string pagelist;  //分页页码

        protected Age_article_category model = new Age_article_category();
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            page = AgeRequest.GetQueryInt("page", 1);
            category_id = AgeRequest.GetQueryInt("category_id");
            BLL.article_category bll = new BLL.article_category();
            model.title = "所有信息";
            if (category_id > 0) //如果ID获取到，将使用ID
            {
                if (bll.Exists(category_id))
                    model = bll.GetModel(category_id);
            }
          
        }
    }
}
