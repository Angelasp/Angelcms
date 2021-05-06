using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Text;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.UI.Page
{
    public partial class error : System.Web.UI.Page
    {
        protected internal Age_siteconfig config = new BLL.siteconfig().loadConfig();
        protected string msg = string.Empty;

        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        public error()
        {
            msg = Utils.ToHtml(AgeRequest.GetQueryString("msg"));
        }

    }
}
