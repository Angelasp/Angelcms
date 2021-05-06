using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Angelcms_Common;
using Angelcms.Model;
using Angelcms.BLL;

namespace Angelcms.Web.UI
{
    public partial class BasePage : System.Web.UI.Page
    {
        public DataTable get_link_list(int top, string strwhere)
        {
            DataTable table = new DataTable();
            string strWhere = "is_lock=0";
            if (!string.IsNullOrEmpty(strwhere))
            {
                strWhere = strWhere + " and " + strwhere;
            }
            return new link().GetList(top, strWhere).Tables[0];
        }

        public DataTable get_link_list(int page_size, int page_index, string strwhere, out int totalcount)
        {
            DataTable table = new DataTable();
            string strWhere = "is_lock=0";
            if (!string.IsNullOrEmpty(strwhere))
            {
                strWhere = strWhere + " and " + strwhere;
            }
            return new link().GetList(page_size, page_index, strWhere, "sort_id asc,add_time desc", out totalcount).Tables[0];
        }

    }
}
