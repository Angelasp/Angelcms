using System;
using System.Text;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.Web.admin.users
{
    public partial class user_sendemail : Web.UI.ManagePage
    {
        string mobiles = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            mobiles = AgeRequest.GetString("mobiles");
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("user_sendemail", AgeEnums.ActionEnum.View.ToString()); //检查权限
                ShowInfo(mobiles);
                TreeBind("is_lock=0"); //绑定类别
            }
        }

        #region 绑定类别=================================
        private void TreeBind(string strWhere)
        {
            BLL.user_groups bll = new BLL.user_groups();
            DataTable dt = bll.GetList(0, strWhere, "grade asc,id asc").Tables[0];

            this.cblGroupId.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                this.cblGroupId.Items.Add(new ListItem(dr["title"].ToString(), dr["id"].ToString()));
            }
        }
        #endregion

        #region 赋值操作=================================
        private void ShowInfo(string _mobiles)
        {
            if (!string.IsNullOrEmpty(_mobiles))
            {
                div_mobiles.Visible = true;
                div_group.Visible = false;
                rblSmsType.SelectedValue = "1";
                txtMobileNumbers.Text = _mobiles;

            }
            else
            {
                rblSmsType.SelectedValue = "2";
                div_mobiles.Visible = false;
                div_group.Visible = true;
            }
        }
        #endregion

        #region 返回会员组所有Email账号===================
        private string GetGroupEmail(ArrayList al)
        {
            StringBuilder str = new StringBuilder();
            foreach (Object obj in al)
            {
                DataTable dt = new BLL.users().GetList(0, "group_id=" + Convert.ToInt32(obj), "reg_time desc,id desc").Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    if (!string.IsNullOrEmpty(dr["email"].ToString()))
                    {
                        str.Append(dr["email"].ToString() + ",");
                    }
                }
            }
            return Utils.DelLastComma(str.ToString());
        }
        #endregion

        //选择发送类型
        protected void rblSmsType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblSmsType.SelectedValue == "1")
            {
                div_group.Visible = false;
                div_mobiles.Visible = true;
            }
            else
            {
                div_group.Visible = true;
                div_mobiles.Visible = false;
            }
        }

        //提交发送
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ChkAdminLevel("user_sendemail", AgeEnums.ActionEnum.Add.ToString()); //检查权限
            //检查短信内容
            if (txtSmsContent.Text.Trim() == "")
            {
                JscriptMsg("请输入Email信息内容！", "", "Error");
                return;
            }
            //检查发送类型
            if (rblSmsType.SelectedValue == "1")
            {
                if (txtMobileNumbers.Text.Trim() == "")
                {
                    JscriptMsg("请输入Email邮箱账号！", "", "Error");
                    return;
                }
                //开始发送Email
                string msg=string.Empty;
                AgeMail.sendMails(siteConfig.emailsmtp, siteConfig.emailusername, siteConfig.emailpassword, siteConfig.emailnickname, siteConfig.emailfrom, txtMobileNumbers.Text.Trim(), siteConfig.webtitle + "消息", txtSmsContent.Text.Trim(), out msg);
                AddAdminLog(AgeEnums.ActionEnum.Add.ToString(), "发送邮件"); //记录日志
                JscriptMsg(msg, "user_list.aspx", "Success");
                return;

            }
            else
            {
                ArrayList al = new ArrayList();
                for (int i = 0; i < cblGroupId.Items.Count; i++)
                {
                    if (cblGroupId.Items[i].Selected)
                    {
                        al.Add(cblGroupId.Items[i].Value);
                    }
                }
                if (al.Count < 1)
                {
                    JscriptMsg("请选择会员组别！", "", "Error");
                    return;
                }
                string _Emails = GetGroupEmail(al);
                //开始发送邮件
                string msg = string.Empty;;
                //发送邮件
                AgeMail.sendMails(siteConfig.emailsmtp, siteConfig.emailusername, siteConfig.emailpassword, siteConfig.emailnickname, siteConfig.emailfrom, _Emails, siteConfig.webtitle + "消息", txtSmsContent.Text.Trim(), out msg);
                AddAdminLog(AgeEnums.ActionEnum.Add.ToString(), "发送邮件"); //记录日志
                JscriptMsg(msg, "user_sendemail.aspx", "Success");
                return;
            }
        }

    }
}