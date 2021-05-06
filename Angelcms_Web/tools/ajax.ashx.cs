using System;
using System.Text;
using System.Web;
using System.Web.SessionState;
using Angelcms.Web.UI;
using Angelcms_Common;
using Angelcms.Model;


namespace Angelcms.Web.tools
{
    /// <summary>
    /// ajax 的摘要说明
    /// </summary>

        public class ajax : IHttpHandler, IRequiresSessionState
        {
            private void link_add(HttpContext context)
            {
                StringBuilder builder = new StringBuilder();
                BLL.link link = new BLL.link();
                Age_link model = new Age_link();
                string formString = AgeRequest.GetFormString("txtCode");
                string str2 = AgeRequest.GetFormString("txtTitle");
                string str3 = AgeRequest.GetFormString("txtUserName");
                string str4 = AgeRequest.GetFormString("txtUserTel");
                string str5 = AgeRequest.GetFormString("txtEmail");
                string str6 = AgeRequest.GetFormString("txtSiteUrl");
                string str7 = AgeRequest.GetFormString("txtImgUrl");
                if (string.IsNullOrEmpty(formString))
                {
                    context.Response.Write("{\"status\":0, \"msg\":\"对不起，请输入验证码！\"}");
                }
                else if (context.Session["dt_session_code"] == null)
                {
                    context.Response.Write("{\"status\":0, \"msg\":\"对不起，系验证码已过期！\"}");
                }
                else if (formString.ToLower() != context.Session["Age_session_code"].ToString().ToLower())
                {
                    context.Response.Write("{\"status\":0, \"msg\":\"验证码与系统的不一致！\"}");
                }
                else if (string.IsNullOrEmpty(str2))
                {
                    context.Response.Write("{\"status\": 0, \"msg\": \"对不起，请输入网站标题！\"}");
                }
                else if (string.IsNullOrEmpty(str6))
                {
                    context.Response.Write("{\"status\": 0, \"msg\": \"对不起，请输入网站网址！\"}");
                }
                else
                {
                    model.title = Utils.DropHTML(str2);
                    model.is_lock = 1;
                    model.is_red = 0;
                    model.user_name = Utils.DropHTML(str3);
                    model.user_tel = Utils.DropHTML(str4);
                    model.email = Utils.DropHTML(str5);
                    model.site_url = Utils.DropHTML(str6);
                    model.img_url = Utils.DropHTML(str7);
                    model.is_image = 1;
                    if (string.IsNullOrEmpty(model.img_url))
                    {
                        model.is_image = 0;
                    }
                    if (link.Add(model) > 0)
                    {
                        context.Response.Write("{\"status\": 1, \"msg\": \"恭喜您，提交成功！\"}");
                    }
                    else
                    {
                        context.Response.Write("{\"status\": 0, \"msg\": \"对不起，保存过程中发生错误！\"}");
                    }
                }
            }

            public void ProcessRequest(HttpContext context)
            {
                string str = context.Request.Params["action"];
                string str2 = str;
                if ((str2 != null) && (str2 == "add"))
                {
                    this.link_add(context);
                }
            }

            public bool IsReusable
            {
                get
                {
                    return false;
                }
            }
        }

}