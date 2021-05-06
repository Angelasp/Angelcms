using System;
using System.Collections.Generic;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.UI.Page
{
    public partial class feedback : Web.UI.BasePage
    {

        protected int page;
        protected int totalcount;
        /// <summary>
        /// 重写虚方法,
        /// 此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            this.page = AgeRequest.GetQueryInt("page", 1);
        }

    }
}