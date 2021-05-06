using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.UI.Page
{
    public partial class category : Web.UI.BasePage
    {
        protected int category_id;  //类别ID
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            category_id = AgeRequest.GetQueryInt("category_id");
        }
    }
}
