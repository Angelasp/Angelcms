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
    public partial class index : Angelcms.Web.UI.ManagePage
    {

        protected int totalCount;
        protected int page;
        protected int pageSize;
        protected string keywords = string.Empty;
        protected string prolistview = string.Empty;


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int num = 0;
            int num2 = 0;
            BLL.link link = new BLL.link();
            for (int i = 0; i < this.rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)this.rptList.Items[i].FindControl("hidId")).Value);
                CheckBox box = (CheckBox)this.rptList.Items[i].FindControl("chkId");
                if (box.Checked)
                {
                    if (link.Delete(id))
                    {
                        num++;
                    }
                    else
                    {
                        num2++;
                    }
                }
            }
            base.AddAdminLog(((AgeEnums.ActionEnum)5).ToString(), string.Concat(new object[] { "删除友情链接成功", num, "条，失败", num2, "条" }));
            base.JscriptMsg(string.Concat(new object[] { "删除成功", num, "条，失败", num2, "条！" }), Utils.CombUrlTxt("index.aspx", "keywords={0}", new string[] { this.keywords }), "Success");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)4).ToString());
            BLL.link link = new BLL.link();
            for (int i = 0; i < this.rptList.Items.Count; i++)
            {
                int num3;
                int id = Convert.ToInt32(((HiddenField)this.rptList.Items[i].FindControl("hidId")).Value);
                if (!int.TryParse(((TextBox)this.rptList.Items[i].FindControl("txtSortId")).Text.Trim(), out num3))
                {
                    num3 = 0x63;
                }
                link.UpdateField(id, "sort_id=" + num3.ToString());
            }
            base.AddAdminLog(((AgeEnums.ActionEnum)4).ToString(), "修改友情链接插件排序:");
            base.JscriptMsg("保存排序成功！", Utils.CombUrlTxt("index.aspx", "keywords={0}", new string[] { this.keywords }), "Success");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            base.Response.Redirect(Utils.CombUrlTxt("index.aspx", "keywords={0}", new string[] { this.txtKeywords.Text }));
        }

        protected string CombSqlTxt(string _keywords)
        {
            StringBuilder builder = new StringBuilder();
            _keywords = _keywords.Replace("'", "");
            if (!string.IsNullOrEmpty(_keywords))
            {
                builder.Append(" and title like '%" + _keywords + "%'");
            }
            return builder.ToString();
        }

        private int GetPageSize(int _default_size)
        {
            int num;
            if (int.TryParse(Utils.GetCookie("link_page_size"), out num) && (num > 0))
            {
                return num;
            }
            return _default_size;
        }

        protected void lbtnUnLock_Click(object sender, EventArgs e)
        {
            base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)6).ToString());
            BLL.link link = new BLL.link();
            for (int i = 0; i < this.rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)this.rptList.Items[i].FindControl("hidId")).Value);
                CheckBox box = (CheckBox)this.rptList.Items[i].FindControl("chkId");
                if (box.Checked)
                {
                    link.UpdateField(id, "is_lock=0");
                }
            }
            base.AddAdminLog(((AgeEnums.ActionEnum)6).ToString(), "审核友情链接");
            base.JscriptMsg("批量审核成功！", Utils.CombUrlTxt("index.aspx", "keywords={0}", new string[] { this.keywords }), "Success");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.keywords = AgeRequest.GetQueryString("keywords");
            this.pageSize = this.GetPageSize(10);
            if (!this.Page.IsPostBack)
            {
                base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)2).ToString());
                this.RptBind("id>0" + this.CombSqlTxt(this.keywords), "sort_id asc,add_time desc");
            }
        }

        private void RptBind(string _strWhere, string _orderby)
        {
            if (!int.TryParse(base.Request.QueryString["page"], out this.page))
            {
                this.page = 1;
            }
            this.txtKeywords.Text = this.keywords;
            this.rptList.DataSource = new BLL.link().GetList(this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
            this.rptList.DataBind();
            this.txtPageNum.Text = this.pageSize.ToString();
            string str = Utils.CombUrlTxt("index.aspx", "keywords={0}&page={1}", new string[] { this.keywords, "__id__" });
            this.PageContent.InnerHtml = Utils.OutPageList(this.pageSize, this.page, this.totalCount, str, 8);
        }

        protected void rptList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            base.ChkAdminLevel("other_link", ((AgeEnums.ActionEnum)4).ToString());
            int id = Convert.ToInt32(((HiddenField)e.Item.FindControl("hidId")).Value);
            BLL.link link = new BLL.link();
            Age_link model = link.GetModel(id);
            string str = e.CommandName.ToLower();
            if ((str != null) && (str == "lbtnisred"))
            {
                if (model.is_red == 1)
                {
                    link.UpdateField(id, "is_red=0");
                }
                else
                {
                    link.UpdateField(id, "is_red=1");
                }
            }
            this.RptBind("id>0" + this.CombSqlTxt(this.keywords), "sort_id asc,add_time desc");
        }

        protected void txtPageNum_TextChanged(object sender, EventArgs e)
        {
            int num;
            if (int.TryParse(this.txtPageNum.Text.Trim(), out num) && (num > 0))
            {
                Utils.WriteCookie("link_page_size", num.ToString(), 0x3840);
            }
            base.Response.Redirect(Utils.CombUrlTxt("index.aspx", "keywords={0}", new string[] { this.keywords }));
        }
    }
}