<%@ Page Language="C#" AutoEventWireup="true" Inherits="Angelcms.Web.UI.Page.usercenter" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Angelcms_Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Angelcms Template Engine at 2016/11/19 20:11:09.
		本页面代码由Angelcms模板引擎生成于 2016/11/19 20:11:09. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>会员中心 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/css/basic.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/jquery-1.4.1.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/lang-chi.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/common.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/overlay.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/calendar.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body >\r\n<!--Header-->\r\n");

	templateBuilder.Append("<!--顶部-->\r\n<div id=\"doc\">\r\n	<div id=\"hd\">\r\n\r\n		<div class=\"clearfix pagetitle\">\r\n			<h1 class=\"sitename\"><a href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\"><img  class=\"ifixpng\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\"  alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" /></a></h1>\r\n<div class=\"language\"> \r\n<ul id=\"menu\" class=\"menu\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">购物车<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script>件</a></li>\r\n </ul>	\r\n <div class=\"clear\"></div>\r\n<div class=\"search clearfix\">\r\n      <input id=\"keywords\" name=\"keywords\" class=\"enter\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" />\r\n      <input class=\"btn\" type=\"button\" value=\"   \" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" />\r\n    <script type=\"text/javascript\">\r\n        $.ajax({\r\n            type: \"get\",\r\n            url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n            cache: false,\r\n            success: function (data) {\r\n			  var result = $.parseJSON(data);\r\n                if (result.status == 1) {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>');\r\n                } else {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n                }\r\n            }\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n	</div>	\r\n	\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"clearfix sitenav\">\r\n			<div class=\"clearfix menu-main\">\r\n<ul id=\"menuSitenav\" class=\"clearfix\">\r\n      <li class=\"first-item\"><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" class=\"home\">网站首页</a></li>\r\n      <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\" target=\"_self\">关于我们</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\" target=\"_self\">新闻资讯</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("products"));

	templateBuilder.Append("\" target=\"_self\">公司产品</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\" target=\"_self\">图片分享</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" target=\"_self\">资源下载</a></li>\r\n      <li><a target=\"_self\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a></li>\r\n      <li><a target=\"_self\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",20));

	templateBuilder.Append("\" target=\"_self\">产业政策</a></li>\r\n                </ul>\r\n				</div>	\r\n		</div>\r\n\r\n\r\n\r\n\r\n	</div>      \r\n</div>\r\n<script type=\"text/javascript\">\r\n$(function() {\r\n	var sWidth = $(\"#banner-inner\").width(); //获取焦点图的宽度（显示面积）\r\n	var len = $(\"#banner-inner ul li\").length; //获取焦点图个数\r\n	var index = 0;\r\n	var picTimer;\r\n\r\n	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮\r\n	var btn = \"<div class='btnBg'></div><div class='btn'>\";\r\n	for(var i=0; i < len; i++) {\r\n		btn += \"<span></span>\";\r\n	}\r\n	btn += \"</div><div class='preNext pre'></div><div class='preNext next'></div>\";\r\n	$(\"#banner-inner\").append(btn);\r\n	$(\"#banner-inner .btnBg\").css(\"opacity\",0.5);\r\n\r\n	//为小按钮添加鼠标滑入事件，以显示相应的内容\r\n	$(\"#banner-inner .btn span\").css(\"opacity\",0.4).mouseover(function() {\r\n		index = $(\"#banner-inner .btn span\").index(this);\r\n		showPics(index);\r\n	}).eq(0).trigger(\"mouseover\");\r\n\r\n	//上一页、下一页按钮透明度处理\r\n	$(\"#banner-inner .preNext\").css(\"opacity\",0.2).hover(function() {\r\n		$(this).stop(true,false).animate({\"opacity\":\"0.5\"},300);\r\n	},function() {\r\n		$(this).stop(true,false).animate({\"opacity\":\"0.2\"},300);\r\n	});\r\n\r\n	//上一页按钮\r\n	$(\"#banner-inner .pre\").click(function() {\r\n		index -= 1;\r\n		if(index == -1) {index = len - 1;}\r\n		showPics(index);\r\n	});\r\n\r\n	//下一页按钮\r\n	$(\"#banner-inner .next\").click(function() {\r\n		index += 1;\r\n		if(index == len) {index = 0;}\r\n		showPics(index);\r\n	});\r\n\r\n	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度\r\n	$(\"#banner-inner ul\").css(\"width\",sWidth * (len));\r\n	\r\n	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放\r\n	$(\"#banner-inner\").hover(function() {\r\n		clearInterval(picTimer);\r\n	},function() {\r\n		picTimer = setInterval(function() {\r\n			showPics(index);\r\n			index++;\r\n			if(index == len) {index = 0;}\r\n		},4000); //此4000代表自动播放的间隔，单位：毫秒\r\n	}).trigger(\"mouseleave\");\r\n	\r\n	//显示图片函数，根据接收的index值显示相应的内容\r\n	function showPics(index) { //普通切换\r\n		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值\r\n		$(\"#banner-inner ul\").stop(true,false).animate({\"left\":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position\r\n		//$(\"#banner-inner .btn span\").removeClass(\"on\").eq(index).addClass(\"on\"); //为当前的按钮切换到选中的效果\r\n		$(\"#banner-inner .btn span\").stop(true,false).animate({\"opacity\":\"0.4\"},300).eq(index).stop(true,false).animate({\"opacity\":\"1\"},300); //为当前的按钮切换到选中的效果\r\n	}\r\n});\r\n</");
	templateBuilder.Append("script>\r\n\r\n<!--banner--> \r\n<div id=\"banner-block\">\r\n	<div class=\"banner-block-width\">\r\n	<div id=\"sys-banner\">\r\n	<div id=\"banner-main\" class=\"banner banner-main\">\r\n   <!--banner start-->\r\n		<div id=\"banner-inner\">\r\n			<ul>\r\n          ");
	DataTable focusNews = get_article_list("news", 0, 5, "status=0 and is_slide=1");

	foreach(DataRow dr in focusNews.Rows)
	{

	templateBuilder.Append("\r\n				<li>\r\n	          <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" /></a>			\r\n				</li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n			</ul>\r\n		</div><!--banner end-->\r\n	</div>\r\n    </div>\r\n	</div>\r\n</div>\r\n<!--end banner-->");


	templateBuilder.Append("\r\n<!--/Header-->\r\n<!--中间区块-->\r\n<div id=\"content-block\">\r\n<div class=\"content-block-width\">\r\n	<div id=\"bd\">\r\n	<div id=\"innerpg\" class=\"bd-inner\">\r\n    <!--检查这里是否为一样-->\r\n	<div class=\"clearfix layout-innerpg \">\r\n		<div class=\"col-main\">\r\n		<div class=\"main-wrap\">\r\n		<div id='htmlpages' class=\"block first-block block-article-view\">\r\n\r\n    ");
	if (action=="index")
	{

	templateBuilder.Append("\r\n    <!--会员中心-->\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\"><span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></span>\r\n      会员中心<strong>Profile</strong></h1>\r\n	</div>\r\n</div>\r\n    <!--会员中心-->\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n    <div class=\"main_head\">\r\n      <div class=\"avatarbox\">\r\n        ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n        <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" />\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <img src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/images/user_avatar.png\" alt=\"求真像\" />\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","avatar"));

	templateBuilder.Append("\">设置头像</a></span>\r\n      </div>\r\n      <div class=\"tips_box\">\r\n        <h3>尊敬的<span class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("</span>，欢迎您！</h3>\r\n        <dl>\r\n          <dt>会员等级：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(groupModel.title));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>个人成长值：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.exp));
	templateBuilder.Append("点</dd>\r\n        </dl>\r\n        \r\n        <dl>\r\n          <dt>本次登录IP：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(curr_login_ip));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>上次登录IP：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(pre_login_ip));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>注册时间：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.reg_time));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>上次登录时间：</dt>\r\n          <dd>");
	templateBuilder.Append(Utils.ObjectToStr(pre_login_time));
	templateBuilder.Append("</dd>\r\n        </dl>\r\n      </div>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    <div class=\"tips_box\">\r\n      <h2>账户统计</h2>\r\n      <dl>\r\n        <dt>账户余额：</dt>\r\n        <dd><b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("</b> 元</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>账户积分：</dt>\r\n        <dd><b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</b> 分</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>未完成订单：</dt>\r\n        <dd><b class=\"red\">");
	templateBuilder.Append(get_user_order_count("status<3 and user_id="+userModel.id).ToString());

	templateBuilder.Append("</b> 个</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>未读短信：</dt>\r\n        <dd><b class=\"red\">");
	templateBuilder.Append(get_user_message_count("type<3 and is_read=0 and accept_user_name='"+userModel.user_name+"'").ToString());

	templateBuilder.Append("</b>条</dd>\r\n      </dl>\r\n    </div>\r\n	</div>\r\n	</div>\r\n    <!--/会员中心-->\r\n    ");
	}
	else if (action=="password")
	{

	templateBuilder.Append("\r\n    <!--修改密码-->\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n	    //初始化表单\r\n		AjaxInitForm('pwd_form', 'btnSubmit', 1);\r\n	  });\r\n    </");
	templateBuilder.Append("script>\r\n\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\"><span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      修改密码\r\n      <strong>Password</strong></h1>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n    <form name=\"pwd_form\" id=\"pwd_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_password_edit\">\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>用户名：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>旧密码：</dt>\r\n        <dd><input name=\"txtOldPassword\" id=\"txtOldPassword\" type=\"password\" class=\"input txt\" datatype=\"*6-20\" nullmsg=\"请输入旧密码\" errormsg=\"密码范围在6-20位之间\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>新密码：</dt>\r\n        <dd><input name=\"txtPassword\" id=\"txtPassword\" type=\"password\" class=\"input txt\" datatype=\"*6-20\" nullmsg=\"请输入密码\" errormsg=\"密码范围在6-20位之间\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>确认新密码：</dt>\r\n        <dd><input name=\"txtPassword1\" id=\"txtPassword1\" type=\"password\" class=\"input txt\" datatype=\"*\" recheck=\"txtPassword\" nullmsg=\"请再输入一次密码\" errormsg=\"两次输入的密码不一致\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认修改\" /></dd>\r\n      </dl>\r\n    </div>\r\n    </form>\r\n	</div>\r\n	</div>\r\n    <!--/修改密码-->\r\n    ");
	}
	else if (action=="proinfo")
	{

	templateBuilder.Append("\r\n    <!--修改资料-->\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n	    //初始化表单\r\n		AjaxInitForm('info_form', 'btnSubmit', 1);\r\n	  });\r\n    </");
	templateBuilder.Append("script>\r\n    <form name=\"info_form\" id=\"info_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_info_edit\">\r\n\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\"><span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      个人资料\r\n      <strong>Information</strong></h1>\r\n	</div>\r\n</div>\r\n\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>用户名：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>Email：</dt>\r\n        <dd><input name=\"txtEmail\" id=\"txtEmail\" type=\"text\" class=\"input txt\" maxlength=\"50\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.email));
	templateBuilder.Append("\" readonly=\"readonly\" datatype=\"e\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>昵称：</dt>\r\n        <dd><input name=\"txtNickName\" id=\"txtNickName\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\" datatype=\"*\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>性别：</dt>\r\n        <dd>\r\n          ");
	if (userModel.sex=="男")
	{

	templateBuilder.Append("\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"男\" checked=\"checked\" />男</label> \r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"女\" />女</label>\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"保密\" datatype=\"*\" sucmsg=\" \" />保密</label>\r\n            ");
	}
	else if (userModel.sex=="女")
	{

	templateBuilder.Append("\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"男\" />男</label>\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"女\" checked=\"checked\" />女</label>\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"保密\" datatype=\"*\" sucmsg=\" \" />保密</label>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"男\" />男</label>\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"女\" />女</label>\r\n            <label><input name=\"rblSex\" type=\"radio\" value=\"保密\" checked=\"checked\" datatype=\"*\" sucmsg=\" \" />保密</label>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>生日：</dt>\r\n        <dd>\r\n          ");
	if (userModel.birthday==null)
	{

	templateBuilder.Append("\r\n          <input name=\"txtBirthday\" id=\"txtBirthday\" type=\"text\" class=\"input txt required dateISO\" maxlength=\"30\" onclick=\"return Calendar('txtBirthday');\" />\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <input name=\"txtBirthday\" id=\"txtBirthday\" type=\"text\" class=\"input txt required dateISO\" maxlength=\"30\" onclick=\"new Calendar().show(this);\" value=\"");	templateBuilder.Append(Utils.ObjectToDateTime(userModel.birthday).ToString("yyyy-M-d"));

	templateBuilder.Append("\" />\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>联系电话：</dt>\r\n        <dd><input name=\"txtTelphone\" id=\"txtTelphone\" type=\"text\" class=\"input txt\" maxlength=\"50\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.telphone));
	templateBuilder.Append("\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>手机号码：</dt>\r\n        <dd><input name=\"txtMobile\" id=\"txtMobile\" type=\"text\" class=\"input txt\" maxlength=\"20\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\" datatype=\"*\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>在线QQ：</dt>\r\n        <dd><input name=\"txtQQ\" id=\"txtQQ\" type=\"text\" class=\"input txt\" maxlength=\"20\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.qq));
	templateBuilder.Append("\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>联系地址：</dt>\r\n        <dd><input name=\"txtAddress\" id=\"txtAddress\" type=\"text\" class=\"input wide\" maxlength=\"250\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.address));
	templateBuilder.Append("\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认修改\" /></dd>\r\n      </dl>\r\n    </div>\r\n    </form>\r\n	</div>\r\n	</div>\r\n    <!--/修改资料-->\r\n    ");
	}
	else if (action=="avatar")
	{

	templateBuilder.Append("\r\n    <!--设置头像-->\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/jquery.jcrop.css\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.jcrop.min.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/avatar.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\"><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      头像设置\r\n      <strong>Avatar</strong></h1>\r\n	</div>\r\n</div>\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n    <strong>当前我的头像</strong>\r\n    <p>如果您还没有设置自己的头像，系统会显示为默认头像，您需要自己上传一张新照片来作为自己的个人头像。</p>\r\n    <div class=\"img_box\">\r\n      ");
	if (userModel.avatar!="")
	{

	templateBuilder.Append("\r\n        <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.avatar));
	templateBuilder.Append("\" width=\"180\" height=\"180\" />\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n        <img src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/images/user_avatar.png\" width=\"180\" height=\"180\" />\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <strong>设置我的新头像</strong>\r\n    <p>上传成功后，请裁剪合适的头像确认保存后才能生效。</p>\r\n    <form id=\"upload_form\" name=\"upload_form\">\r\n      <div class=\"avatar_upload\">\r\n        <a href=\"javascript:;\" class=\"files\"><input type=\"file\" id=\"Filedata\" name=\"Filedata\" onchange=\"Upload('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("');\" /></a>\r\n        <span class=\"uploading\">正在上传，请稍候...</span>\r\n      </div>\r\n      <div class=\"clear\"></div>\r\n      <div class=\"avatar_box\">\r\n        <div class=\"avatar_big_warp\">\r\n          <div class=\"avatar_big_box\">\r\n            <div class=\"avatar_big_pic\">\r\n              <img id=\"target\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/images/pic_bg.png\" />\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"avatar_small_warp\">\r\n          <div class=\"avatar_small_box\">\r\n            <div class=\"avatar_small_pic\"><img id=\"preview\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/images/pic_bg.png\" /></div>\r\n          </div>\r\n          <p style=\"text-align:center;\"><strong>头像预览区</strong></p>\r\n          <p style=\"text-align:center;\"><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"button\" class=\"btn btn-success\" value=\"确定保存\" onclick=\"CropSubmit('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("');return false;\" /></p>\r\n          <p>提示：生成头像大小180*180相素上传图片后，左侧选取图片合适大小，点击下面的保存按钮。</p>\r\n        </div>\r\n      </div>\r\n      <input id=\"hideFileName\" name=\"hideFileName\" type=\"hidden\" />\r\n      <input id=\"hideX1\" name=\"hideX1\" type=\"hidden\" value=\"0\" />\r\n      <input id=\"hideY1\" name=\"hideY1\" type=\"hidden\" value=\"0\" />\r\n      <input id=\"hideWidth\" name=\"hideWidth\" type=\"hidden\" value=\"0\" />\r\n      <input id=\"hideHeight\" name=\"hideHeight\" type=\"hidden\" value=\"0\" />\r\n    </form>\r\n	</div>\r\n	</div>\r\n    <!--/设置头像-->\r\n    ");
	}
	else if (action=="invite")
	{

	templateBuilder.Append("\r\n    <!--邀请码-->\r\n\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\"><span><a href=\"javascript:;\" onclick=\"clickSubmit('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_invite_code');\">申请邀请码</a></span>\r\n      我的邀请码\r\n      <strong>Invite</strong></h1>\r\n	</div>\r\n</div>\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n    <p>说明：您购买的邀请码会在失效之后由系统定时清理，不会长期驻留在列表中</p>\r\n    <div class=\"line10\"></div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ftable\">\r\n      <tr>\r\n        <th align=\"left\">邀请码</th>\r\n        <th width=\"150\">申请时间</th>\r\n        <th width=\"150\">过期时间</th>\r\n        <th width=\"80\">已使用次数</th>\r\n        <th width=\"80\">状态</th>\r\n      </tr>\r\n      ");
	DataTable list1 = get_user_invite_list(0, "user_name='"+userModel.user_name+"'");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list1.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td>" + Utils.ObjectToStr(dr["str_code"]) + " &nbsp; <a href=\"javascript:;\" onclick=\"copyText('邀请码：" + Utils.ObjectToStr(dr["str_code"]) + "');\">[复制]</a></td>\r\n        <td align=\"center\">" + Utils.ObjectToStr(dr["add_time"]) + "</td>\r\n        <td align=\"center\">\r\n          ");
	if (Utils.ObjectToStr(dr["eff_time"])=="")
	{

	templateBuilder.Append("\r\n          无限制\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          " + Utils.ObjectToStr(dr["eff_time"]) + "\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </td>\r\n        <td align=\"center\">" + Utils.ObjectToStr(dr["count"]) + "</td>\r\n        <td align=\"center\">\r\n          ");
	if (get_invite_status(Utils.ObjectToStr(dr["str_code"])))
	{

	templateBuilder.Append("\r\n          有效\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          已失效\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	if (list1.Rows.Count<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\" colspan=\"5\">暂无记录</td></tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </table>\r\n	</div>\r\n	</div>\r\n    <!--/邀请码-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n\r\n  <div class=\"clear\"></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n				<div class=\"block-foot\"><div><div>-</div></div></div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"col-sub\">\r\n   <div class=\"block first-block block-products  list-240\" id=\"block-products-89301\" rel=\"89301\"> \r\n   <!--UserCenter navtion-->\r\n    ");

	templateBuilder.Append("<div class=\"block-head\">\r\n    <div class=\"head-inner\">\r\n        <h2 class=\"title\">\r\n            交易管理\r\n        </h2>\r\n    </div>\r\n</div>\r\n<div class=\"block-content clearfix\">\r\n    <div class=\"item-list\">\r\n        <ul class=\"clearfix\">\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">\r\n                    交易订单\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("userorder","close"));

	templateBuilder.Append("\">\r\n                    已关闭订单\r\n                </a>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n<div class=\"block-head\">\r\n    <div class=\"head-inner\">\r\n        <h2 class=\"title\">\r\n            账户管理\r\n        </h2>\r\n    </div>\r\n</div>\r\n<div class=\"block-content clearfix\">\r\n    <div class=\"item-list\">\r\n        <ul class=\"clearfix\">\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">\r\n                    账户余额\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">\r\n                    我的积分\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">\r\n                    站内短信\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\">\r\n                    邀请码\r\n                </a>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n<div class=\"block-head\">\r\n    <div class=\"head-inner\">\r\n        <h2 class=\"title\">\r\n            基本资料\r\n        </h2>\r\n    </div>\r\n</div>\r\n<div class=\"block-content clearfix\">\r\n    <div class=\"item-list\">\r\n        <ul class=\"clearfix\">\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\">\r\n                    个人资料\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\">\r\n                    修改密码\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">\r\n                    退出登录\r\n                </a>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n</div>");


	templateBuilder.Append("\r\n    <!--UserCenter navtion-->\r\n    <div class=\"block-foot\">\r\n	<div><div>-</div></div></div>\r\n	</div>\r\n\r\n	</div></div>\r\n	</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<!--底部-->\r\n<div id=\"ft\">\r\n	<div class=\"ft-inner\">\r\n	<div class=\"ft-menu\"  id=\"ft-menu\">\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">网站首页</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("products"));

	templateBuilder.Append("\">公司产品</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>\r\n	</div>\r\n\r\n<div class=\"siteinfo\" id=\"ft-siteinfo\">\r\n  <p>版权所有 Angel工作室 京ICP备备01068681号 版本：V");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append(" © Copyright 2009 - 2014. angelasp.com. All Rights Reserved.&nbsp; </p>\r\n</div>\r\n\r\n</div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
