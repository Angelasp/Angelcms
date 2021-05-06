using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.admin
{
    public partial class index : Web.UI.ManagePage
    {
        protected Age_manager admin_info;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                admin_info = GetAdminInfo();
            }
        }

        //安全退出
        protected void lbtnExit_Click(object sender, EventArgs e)
        {
            Session[AgeKeys.SESSION_ADMIN_INFO] = null;
            Utils.WriteCookie("AdminName", "Agecms", -14400);
            Utils.WriteCookie("AdminPwd", "Agecms", -14400);
            Response.Redirect("login.aspx");
        }

    }
}