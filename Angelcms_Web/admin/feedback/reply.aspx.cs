using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.admin.feedback
{
    public partial class reply : Angelcms.Web.UI.ManagePage
    {
        private int id = 0;
        protected Age_feedback model = new Age_feedback();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            base.ChkAdminLevel("other_feedback", ((AgeEnums.ActionEnum)7).ToString());
            BLL.feedback feedback = new BLL.feedback();
            this.model = feedback.GetModel(this.id);
            this.model.reply_content = Utils.ToHtml(this.txtReContent.Text);
            this.model.reply_time = DateTime.Now;
            feedback.Update(this.model);
            base.AddAdminLog(((AgeEnums.ActionEnum)7).ToString(), "回复留言插件内容：" + this.model.title);
            base.JscriptMsg("留言回复成功！", "index.aspx", "Success");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.id = AgeRequest.GetQueryInt("id");
            if (this.id == 0)
            {
                base.JscriptMsg("传输参数不正确！", "back", "Error");
            }
            else if (!new BLL.feedback().Exists(this.id))
            {
                base.JscriptMsg("信息不存在或已被删除！", "back", "Error");
            }
            else if (!this.Page.IsPostBack)
            {
                base.ChkAdminLevel("other_feedback", ((AgeEnums.ActionEnum)2).ToString());
                this.ShowInfo(this.id);
            }
        }

        private void ShowInfo(int _id)
        {
            this.model = new BLL.feedback().GetModel(_id);
            this.txtReContent.Text = Utils.ToTxt(this.model.reply_content);
        }
    }
}