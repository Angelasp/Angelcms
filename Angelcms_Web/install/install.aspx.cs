﻿using System;
using System.Collections.Generic;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Angelcms_Common;
using Angelcms_DBUtility;
using Angelcms_DBUtility.Provider;

namespace Angelcms_Web.install
{
    public partial class install : System.Web.UI.Page
    {
        public string step = AgeRequest.GetString("step");

        public int stepNum = 0;
        /// <summary>
        /// 服务器环境检测结果json
        /// </summary>
        public string testResult = "";

        public string sqlServerIP = "";
        public string dataBaseName = "";
        public string sqlUID = "";
        public string sqlPassword = "";
        public string sqlPasswordConfirm = "";
        public string tablePrefix = "";
        public string connectionString = "";
        public string commandText = "";
        public string sqlVersion = "";

        public string forumPath = "";

        public string adminName = AgeRequest.GetString("adminname");
        public string adminPassword = AgeRequest.GetString("adminpassword");

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (step)
            {
                case "servertest":
                    testResult = InstallUtils.InitialSystemValidCheck();
                    stepNum = 1;
                    break;
                case "dbset":
                    DbconfigInfo dntConfigInfo = BaseConfigProvider.GetRealBaseConfig();
                    if (dntConfigInfo != null)
                    {
                        FillDatabaseInfo(dntConfigInfo.Dbconnectstring);
                        tablePrefix = dntConfigInfo.Tableprefix;
                    }
                    stepNum = 2;
                    break;
                case "forumset":
                    stepNum = 3;
                    break;
                case "initial":
                    stepNum = 4;
                    break;
                default:
                    InstallUtils.SaveDntConfigForumPath();
                    break;
            }
        }

        /// <summary>
        /// 从配置文件中的连接字符串填充界面上的数据库配置信息
        /// </summary>
        /// <param name="connectionstring"></param>
        protected void FillDatabaseInfo(string connectionstring)
        {
            foreach (string info in connectionstring.Split(';'))
            {
                if (info.ToLower().IndexOf("data source") >= 0)
                {
                    sqlServerIP = info.Split('=')[1].Trim();
                    continue;
                }
                if (info.ToLower().IndexOf("initial catalog") >= 0)
                {
                    dataBaseName = info.Split('=')[1].Trim();
                    continue;
                }
                if (info.ToLower().IndexOf("user id") >= 0)
                {
                    sqlUID = info.Split('=')[1].Trim();
                    continue;
                }
                if (info.ToLower().IndexOf("password") >= 0)
                {
                    sqlPassword = info.Split('=')[1].Trim();
                    continue;
                }
            }
        }



    }
}