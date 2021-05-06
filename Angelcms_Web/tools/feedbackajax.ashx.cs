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
    /// feedbackajax 的摘要说明
    /// </summary>
    public class feedbackajax : IHttpHandler, IRequiresSessionState
    {
       private void feedback_add(HttpContext context)
        {
            StringBuilder builder = new StringBuilder();
            BLL.feedback feedback = new BLL.feedback();
            Age_feedback model = new Age_feedback();
            string formString = AgeRequest.GetFormString("txtCode");
            string str2 = AgeRequest.GetFormString("txtTitle");
            string str3 = AgeRequest.GetFormString("txtContent");
            string str4 = AgeRequest.GetFormString("txtUserName");
            string str5 = AgeRequest.GetFormString("txtUserTel");
            string str6 = AgeRequest.GetFormString("txtUserQQ");
            string str7 = AgeRequest.GetFormString("txtUserEmail");
            if (string.IsNullOrEmpty(formString))
            {
                context.Response.Write("{\"status\":0, \"msg\":\"对不起，请输入验证码！\"}");
            }
            else if (context.Session[AgeKeys.SESSION_CODE] == null)
            {
                context.Response.Write("{\"status\":0, \"msg\":\"对不起，验证码已过期！\"}");
            }
            else if (formString.ToLower() != context.Session[AgeKeys.SESSION_CODE].ToString().ToLower())
            {
                context.Response.Write("{\"status\":0, \"msg\":\"验证码与系统的不一致！\"}");
            }
            else if (string.IsNullOrEmpty(str3))
            {
                context.Response.Write("{\"status\": 0, \"msg\": \"对不起，请输入留言的内容！\"}");
            }
            else
            {
                model.title = Utils.DropHTML(str2);
                model.content = Utils.ToHtml(str3);
                model.user_name = Utils.DropHTML(str4);
                model.user_tel = Utils.DropHTML(str5);
                model.user_qq = Utils.DropHTML(str6);
                model.user_email = Utils.DropHTML(str7);
                model.add_time = DateTime.Now;
                model.is_lock = 1;
                if (feedback.Add(model) > 0)
                {
                    context.Response.Write("{\"status\": 1, \"msg\": \"恭喜您，留言提交成功！\"}");
                }
                else
                {
                    context.Response.Write("{\"status\": 0, \"msg\": \"对不起，保存过程中发生错误！\"}");
                }
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            string queryString = AgeRequest.GetQueryString("action");
            if ((queryString != null) && (queryString == "add"))
            {
                this.feedback_add(context);
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