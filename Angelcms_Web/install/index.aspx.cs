using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Angelcms_Web.install
{
    public partial class index : System.Web.UI.Page
    {

       /// <summary>
       /// 提示出错信息
       /// </summary>
        public string httpModuleTip = "<br/>请在web.config中configuration->system.web->httpModules中添加节点<br/>" +
           HttpUtility.HtmlEncode(" <add type=\"Angelcms.Web.UI.HttpModule, Angelcms_Web.UI\" name=\"HttpModule\" />") +
           ",<br/>并在configuration->appSettings中添加网站配置文件\n" +
           HttpUtility.HtmlEncode("<add key=\"Configpath\" value=\"~/xmlconfig/site.config\" />\n") +
           HttpUtility.HtmlEncode("<add key=\"Urlspath\" value=\"~/xmlconfig/urls.config\" />\n") +
           HttpUtility.HtmlEncode(" <add key=\"Userpath\" value=\"~/xmlconfig/user.config\" />\n") +
           HttpUtility.HtmlEncode("<add key=\"Orderpath\" value=\"~/xmlconfig/order.config\" />\n");
        public string msg = "";

        /// <summary>
        /// 初始加载方法
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            bool isAssemblyInexistence = false;
            string binfolderpath = HttpRuntime.BinDirectory;
            try
            {
                string[] assemblylist = new string[] { "Angelcms_BLL.dll", "Angelcms_Common.dll", "Angelcms_DAL.dll", "Angelcms_DBUtility.dll", 
                "Angelcms_Model.dll", "Angelcms_oauth.dll", "Angelcms_Web.dll","Angelcms_Web.UI.dll","LitJSON.dll" };

                ArrayList inexistenceAssemblyList = new ArrayList();
                foreach (string assembly in assemblylist)
                {
                    if (!System.IO.File.Exists(binfolderpath + assembly))
                    {
                        isAssemblyInexistence = true;
                        inexistenceAssemblyList.Add(assembly);
                    }
                }
                if (isAssemblyInexistence)
                {
                    foreach (string assembly in inexistenceAssemblyList)
                    {
                        msg += "<li>" + assembly + " 文件放置不正确,请将所有的dll文件复制到目录" + binfolderpath + " 中.</li>";
                    }
                }
            }
            catch
            {
                msg += "<li>请将所有的dll文件复制到目录 " + binfolderpath + " 中.</li>";
            }

            if (!System.IO.File.Exists(binfolderpath.Replace("bin\\", "") + "Web.config"))
            {
                isAssemblyInexistence = true;
                msg += "<li>web.config文件不存在,请将该文件放置在" + binfolderpath.Replace("bin\\", "") + " 目录下.</li>";
            }
            else
            {
                //判断web.config是否正确
                string xPath1 = "/configuration/system.web/httpModules";
                string xPath2 = "/configuration/appSettings";
                System.Xml.XmlDocument webConfig = new System.Xml.XmlDocument();
                System.Xml.XmlDocument webConfigOrigin = new System.Xml.XmlDocument();

                webConfig.Load(binfolderpath.Replace("bin\\", "") + "Web.config");
                webConfigOrigin = webConfig;

                System.Xml.XmlNode node1 = webConfig.SelectSingleNode(xPath1);
                System.Xml.XmlNode node2 = webConfig.SelectSingleNode(xPath2);

                if (node1 == null || node1.ChildNodes.Count <= 0 || node1.InnerXml.IndexOf("Angelcms.Web.UI.HttpModule") < 0
                    || node2 == null || node2.ChildNodes.Count <= 0 || node2.InnerXml.IndexOf("Configpath") < 0)
                {
                    isAssemblyInexistence = true;
                    msg += "<li>Web.config中缺少了Angelcms的HttpModule," + httpModuleTip + ".<br/><a href=\"http://www.angelasp.com/Contact.asp\">详情请联系我们...</a></li>";
                }
            }
            if (!isAssemblyInexistence)
                Response.Redirect("install.aspx");
        }
    }
}