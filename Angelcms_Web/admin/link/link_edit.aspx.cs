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

namespace Angelcms.Web.admin.link
{

public partial class link_edit : Angelcms.Web.UI.ManagePage
    {  
    private string action = AgeEnums.ActionEnum.Add.ToString(); //操作类型
    private int id = 0;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (this.action == ((AgeEnums.ActionEnum)4).ToString())
            {
                base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)4).ToString());
                if (!this.DoEdit(this.id))
                {
                    base.JscriptMsg("保存过程中发生错误！", "", "Error");
                }
                else
                {
                    base.JscriptMsg("修改链接成功！", "index.aspx", "Success");
                }
            }
            else
            {
                base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)3).ToString());
                if (!this.DoAdd())
                {
                    base.JscriptMsg("保存过程中发生错误！", "", "Error");
                }
                else
                {
                    base.JscriptMsg("添加链接成功！", "index.aspx", "Success");
                }
            }
        }

        private bool DoAdd()
        {
            bool flag = false;
            Age_link model = new Age_link();
            BLL.link link2 = new BLL.link();
            model.title = this.txtTitle.Text.Trim();
            model.is_lock = Utils.StrToInt(this.rblIsLock.SelectedValue, 0);
            if (this.cbIsRed.Checked)
            {
                model.is_red = 1;
            }
            else
            {
                model.is_red = 0;
            }
            model.sort_id = Utils.StrToInt(this.txtSortId.Text.Trim(), 0x63);
            model.user_name = this.txtUserName.Text.Trim();
            model.user_tel = this.txtUserTel.Text.Trim();
            model.email = this.txtEmail.Text.Trim();
            model.site_url = this.txtSiteUrl.Text.Trim();
            model.img_url = this.txtImgUrl.Text.Trim();
            model.is_image = 1;
            if (string.IsNullOrEmpty(model.img_url))
            {
                model.is_image = 0;
            }
            if (link2.Add(model) > 0)
            {
                base.AddAdminLog(((AgeEnums.ActionEnum)3).ToString(), "添加友情链接：" + model.title);
                flag = true;
            }
            return flag;
        }

        private bool DoEdit(int _id)
        {
            bool flag = false;
            BLL.link link = new BLL.link();
            Age_link model = link.GetModel(_id);
            model.title = this.txtTitle.Text.Trim();
            model.is_lock = Utils.StrToInt(this.rblIsLock.SelectedValue, 0);
            if (this.cbIsRed.Checked)
            {
                model.is_red = 1;
            }
            else
            {
                model.is_red = 0;
            }
            model.sort_id = Utils.StrToInt(this.txtSortId.Text.Trim(), 0x63);
            model.user_name = this.txtUserName.Text.Trim();
            model.user_tel = this.txtUserTel.Text.Trim();
            model.email = this.txtEmail.Text.Trim();
            model.site_url = this.txtSiteUrl.Text.Trim();
            model.img_url = this.txtImgUrl.Text.Trim();
            model.is_image = 1;
            if (string.IsNullOrEmpty(model.img_url))
            {
                model.is_image = 0;
            }
            if (link.Update(model))
            {
                base.AddAdminLog(((AgeEnums.ActionEnum)4).ToString(), "修改友情链接：" + model.title);
                flag = true;
            }
            return flag;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = AgeRequest.GetQueryString("action");
            if (!string.IsNullOrEmpty(queryString) && (queryString == ((AgeEnums.ActionEnum)4).ToString()))
            {
                this.action = ((AgeEnums.ActionEnum)4).ToString();
                this.id = AgeRequest.GetQueryInt("id");
                if (this.id == 0)
                {
                    base.JscriptMsg("传输参数不正确！", "back", "Error");
                    return;
                }
                if (!new BLL.link().Exists(this.id))
                {
                    base.JscriptMsg("信息不存在或已被删除！", "back", "Error");
                    return;
                }
            }
            if (!this.Page.IsPostBack)
            {
                base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)2).ToString());
                if (this.action == ((AgeEnums.ActionEnum)4).ToString())
                {
                    this.ShowInfo(this.id);
                }
            }
        }

        private void ShowInfo(int _id)
        {
            Age_link model = new BLL.link().GetModel(_id);
            this.txtTitle.Text = model.title;
            if (model.is_red == 1)
            {
                this.cbIsRed.Checked = true;
            }
            else
            {
                this.cbIsRed.Checked = false;
            }
            this.rblIsLock.SelectedValue = model.is_lock.ToString();
            this.txtSortId.Text = model.sort_id.ToString();
            this.txtUserName.Text = model.user_name;
            this.txtUserTel.Text = model.user_tel;
            this.txtEmail.Text = model.email;
            this.txtSiteUrl.Text = model.site_url;
            this.txtImgUrl.Text = model.img_url;
        }
    }










}