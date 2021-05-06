using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.admin
{
    public partial class systemmain : Web.UI.ManagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Age_manager admin_info = GetAdminInfo(); //管理员信息
                //登录信息                                     
                if (admin_info != null)
                {
                    BLL.manager_log bll = new BLL.manager_log();
                    Age_manager_log model1 = bll.GetModel(admin_info.user_name, 1, AgeEnums.ActionEnum.Login.ToString());
                    if (model1 != null)
                    {
                        //本次登录
                        litIP.Text = model1.user_ip;
                    }
                    Age_manager_log model2 = bll.GetModel(admin_info.user_name, 2, AgeEnums.ActionEnum.Login.ToString());
                    if (model2 != null)
                    {
                        //上一次登录
                        litBackIP.Text = model2.user_ip;
                        litBackTime.Text = model2.add_time.ToString();
                    }
                }
                //string mmm = DESEncrypt.Encrypt("http://www.angelasp.com/upangelcms.asp?m=1", "Age");
                //string newslist = DESEncrypt.Encrypt("http://www.angelasp.com/crmhelp/news.asp", "Age");

                LitUpgrade.Text = Utils.GetDomainStr(AgeKeys.CACHE_OFFICIAL_UPGRADE, DESEncrypt.Decrypt(AgeKeys.FILE_URL_UPGRADE_CODE, "Age"));
                NewsNotice.Text = Utils.GetDomainStr(AgeKeys.CACHE_OFFICIAL_NOTICE, DESEncrypt.Decrypt(AgeKeys.FILE_URL_NOTICE_CODE, "Age"));
                Utils.GetDomainStr("Age_cache_domain_info", "http://www.angelasp.com/upangelcms.asp?u=" + Request.Url.DnsSafeHost + "&i=" + Request.ServerVariables["LOCAL_ADDR"]);
            }
        }
    }
}