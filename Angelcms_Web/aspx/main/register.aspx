<%@ Page Language="C#" AutoEventWireup="true" Inherits="Angelcms.Web.UI.Page.register" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>会员注册 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("-powered by angelasp.com\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("-powered by angelasp.com\" name=\"description\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/css/basic.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/css/style.css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n<!--中间区块-->\r\n<div id=\"content-block\">\r\n<div class=\"content-block-width\">\r\n	<div id=\"bd\">\r\n	<div id=\"innerpg\" class=\"bd-inner\">\r\n    <!--检查这里是否为一样-->\r\n	<div class=\"clearfix layout-innerpg \">\r\n		<div class=\"col-main\">\r\n		<div class=\"main-wrap\">\r\n						<div id='htmlpages' class=\"block first-block block-article-view\">\r\n				<div class=\"block-head\">\r\n					<div class=\"head-inner\">\r\n						<h1 class=\"title\">会员注册<strong>Register</strong></h1>\r\n					</div>\r\n				</div>\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\">\r\n	<!--content-->\r\n    <div class=\"reg-box\">\r\n      <div class=\"reg-top\">\r\n        <ul class=\"step");
	templateBuilder.Append(Utils.ObjectToStr(action));
	templateBuilder.Append("\">\r\n          <li class=\"step1\"><em>1</em>填写会员信息</li>\r\n          ");
	if (uconfig.regverify>0)
	{

	templateBuilder.Append("\r\n          <li class=\"step2\"><em>2</em>验证/审核</li>\r\n          <li class=\"step3\"><em>3</em>注册成功</li>\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <li class=\"step3\"><em>2</em>注册成功</li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      ");
	if (action=="")
	{

	templateBuilder.Append("\r\n      <div class=\"reg-con\">\r\n        <!--用户注册-->\r\n        <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n		<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/register_validate.js\"></");
	templateBuilder.Append("script>\r\n        <form id=\"regform\" name=\"regform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_register\">\r\n          ");
	if (uconfig.regstatus==3)
	{

	templateBuilder.Append("\r\n          <dl>\r\n            <dt><em>*</em>邀请码：</dt>\r\n            <dd>\r\n              <input id=\"txtInviteCode\" name=\"txtInviteCode\" class=\"input wide\" type=\"text\" datatype=\"*\" sucmsg=\" \" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（仅通过邀请码注册，获取邀请码请联系相关人员。）</i>\r\n            </dd>\r\n          </dl>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          <dl>\r\n            <dt><em>*</em>用户名：</dt>\r\n            <dd>\r\n              <input id=\"txtUserName\" name=\"txtUserName\" class=\"input wide\" type=\"text\" datatype=\"s3-50\" nullmsg=\"请输入用户名\" sucmsg=\" \" ajaxurl=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=validate_username\" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（5-20位字母、数字或下划线组合，首字符必须为字母。）</i>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt><em>*</em>密码：</dt>\r\n            <dd>\r\n              <input id=\"txtPassword\" name=\"txtPassword\" class=\"input wide\" type=\"password\" datatype=\"*6-20\" nullmsg=\"请输入密码\" errormsg=\"密码范围在6-20位之间\" sucmsg=\" \" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（为了您的帐户安全，强烈建议您的密码使用字符+数字等多种不同类型的组合，并且密码长度大于6位。）</i>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt><em>*</em>确认密码：</dt>\r\n            <dd>\r\n              <input id=\"txtPassword1\" name=\"txtPassword1\" class=\"input wide\" type=\"password\" datatype=\"*\" recheck=\"txtPassword\" nullmsg=\"请再输入一次密码\" errormsg=\"两次输入的密码不一致\" sucmsg=\" \" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（确保密码输入正确。）</i>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt><em>*</em>手机号码：</dt>\r\n            <dd>\r\n              <input id=\"txtMobile\" name=\"txtMobile\" class=\"input wide\" type=\"text\" datatype=\"m\" nullmsg=\"请再输入手机号码\" sucmsg=\" \" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（填写正确的手机号码，忘记密码时可以通过短信找回！）</i>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt><em>*</em>Email：</dt>\r\n            <dd>\r\n              <input id=\"txtEmail\" name=\"txtEmail\" class=\"input wide\" type=\"text\" datatype=\"e\" nullmsg=\"请再输入邮箱地址\" sucmsg=\" \" />\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（填写正确的邮箱地址，忘记密码时可以通过邮箱找回！）</i>\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt><em>*</em>验证码：</dt>\r\n            <dd>\r\n              ");
	if (uconfig.regstatus==2)
	{

	templateBuilder.Append("\r\n              <input id=\"txtCode\" name=\"txtCode\" class=\"input small\" type=\"text\" disabled=\"disabled\" datatype=\"s4-20\" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n              <input id=\"btnSendcode\" type=\"button\" class=\"btn\" value=\"获取验证码\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_register_smscode\" />\r\n              <i>（通过手机短信获取验证码，不区别大小写！）</i>\r\n              ");
	}
	else
	{

	templateBuilder.Append("\r\n              <input id=\"txtCode\" name=\"txtCode\" class=\"input small\" type=\"text\" datatype=\"s4-20\" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n              <a id=\"verifyCode\" style=\"display:none;\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" /> 看不清楚？</a>\r\n              <span class=\"Validform_checktip\"></span>\r\n              <i>（单击显示验证码，不区别大小写！）</i>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n          </dl>\r\n          ");
	if (uconfig.regrules==1)
	{

	templateBuilder.Append("\r\n          <dl>\r\n            <dt><em>*</em>注册条款：</dt>\r\n            <dd>\r\n              <input id=\"chkAgree\" type=\"checkbox\" value=\"1\" name=\"chkAgree\">\r\n              <label for=\"chkAgree\">我已仔细阅读并接受<a href=\"javascript:;\" onclick=\"showWindow('regrules');\">注册许可协议</a>。</label>\r\n              <div id=\"regrules\" title=\"注册许可协议\" style=\"display:none;\">");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.regrulestxt));
	templateBuilder.Append("</div>\r\n            </dd>\r\n          </dl>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          <dl>\r\n            <dt></dt>\r\n            <dd>\r\n              ");
	if (uconfig.regrules==1)
	{

	templateBuilder.Append("\r\n              <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"注 册\" disabled=\"disabled\" />\r\n              ");
	}
	else
	{

	templateBuilder.Append("\r\n              <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"注 册\" />\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n          </dl>\r\n        </form>\r\n        <!--用户注册-->\r\n      </div>\r\n      ");
	}	//end for if

	if (action=="close")
	{

	templateBuilder.Append("\r\n      <!--关闭会员注册-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico warning\"></div>\r\n        <div class=\"msg\">\r\n          <strong>非常抱歉，系统暂停注册会员服务！</strong>\r\n          <p>由于某些原因，系统暂停注册会员，如对您造成不便之处，我们深感遗憾！</p>\r\n          <p>如需了解开放时间，请联系本站客服或管理员。</p>\r\n          <p>您可以点击这里<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">返回网站首页</a></p>\r\n        </div>\r\n      </div>\r\n      <!--关闭会员注册-->\r\n      ");
	}	//end for if

	if (action=="sendmail")
	{

	templateBuilder.Append("\r\n      <!--发送邮箱验证-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico warning\"></div>\r\n        <div class=\"msg\">\r\n          <strong>注册成功，您的账户目前处于未验证状态！</strong>\r\n          <p>欢迎您成为本站会员，您的账户目前处于未验证状态，请尽快登录您的注册邮箱激活该会员账户。</p>\r\n          <p>系统已经自动为您发送了一封验证邮件，如果您长时间未收到邮件，请点击这里<a href=\"javascript:;\" onclick=\"SendEmail('");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_verify_email');\">重新发送邮件</a>！</p>\r\n          <i>温馨提示：邮件验证有效期为\r\n          ");
	if (uconfig.regemailexpired>0)
	{

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.regemailexpired));
	templateBuilder.Append("天\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          无限制\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          </i>\r\n        </div>\r\n      </div>\r\n      <!--发送邮箱验证-->\r\n      ");
	}	//end for if

	if (action=="checkmail")
	{

	templateBuilder.Append("\r\n      <!--邮箱验证成功-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico\"></div>\r\n        <div class=\"msg\">\r\n          <strong>恭喜您");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("，已通过邮件激活会员账户</strong>\r\n          <p>您的会员账户已经激活啦，从现在起，你可以享受更多的会员服务，还等什么呢？</p>\r\n          <p>赶快点击这里返回<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>，点击这里<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">进入会员中心</a>吧！</p>\r\n        </div>\r\n      </div>\r\n      <!--邮箱验证成功-->\r\n      ");
	}	//end for if

	if (action=="checkerror")
	{

	templateBuilder.Append("\r\n      <!--注册验证失败-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico error\"></div>\r\n        <div class=\"msg\">\r\n          <strong>出错啦，该用户不存在或验证已过期！</strong>\r\n          <p>无法验证你的账户，不知神马原因，可能是你的用户名不存在或者验证码已经过期啦！</p>\r\n          <p>不过别担心，如果您还记得你的会员名称的话，点击这里<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">进入会员中心</a>吧。</p>\r\n        </div>\r\n      </div>\r\n      <!--注册验证失败-->\r\n      ");
	}	//end for if

	if (action=="verify")
	{

	templateBuilder.Append("\r\n      <!--人工审核-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico warning\"></div>\r\n        <div class=\"msg\">\r\n          <strong>账户处于未审核状态，请等待人工审核通过！</strong>\r\n          <p>很抱歉亲爱的，您的会员账户还没有审核通过呢，再等等吧，实在等不及的话请联系本站客服人员！</p>\r\n          <p>由于种种原因，本站不得以暂时开启人工审核，如对您造成不便敬请原谅哦。</p>\r\n          <p>您可以点击这里<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">返回网站首页</a></p>\r\n        </div>\r\n      </div>\r\n      <!--人工审核-->\r\n      ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n      <!--注册成功-->\r\n      <div class=\"msg_tips\">\r\n        <div class=\"ico\"></div>\r\n        <div class=\"msg\">\r\n          <strong>恭喜您");
	templateBuilder.Append(Utils.ObjectToStr(username));
	templateBuilder.Append("，成功注册成为本站会员！</strong>\r\n          <p>您已经是本站的会员啦，从现在起，你可以享受更多的会员服务，还等什么呢？</p>\r\n          <p>赶快点击这里返回<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>或点击这里<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">进入会员中心</a>吧！</p>\r\n        </div>\r\n      </div>\r\n      <!--注册成功-->\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n    </div>\r\n\r\n    <div class=\"clear\"></div>\r\n	<!--content-->\r\n\r\n\r\n\r\n                  </div>\r\n				</div>\r\n				<div class=\"block-foot\"><div><div>-</div></div></div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"col-sub\">\r\n			<div class=\"block first-block block-products  list-240\" id=\"block-products-89301\" rel=\"89301\">    <div class=\"block-head\">    <div class=\"head-inner\">\r\n	    	<h2 class=\"title\">栏目导航</h2>\r\n			<div class=\"links\"><a class=\"more\" href=\"/products\">更多</a></div>    </div>\r\n    </div>    <div class=\"block-content clearfix\">\r\n    	<div class=\"item-list\">\r\n	    <ul class=\"clearfix\">\r\n        ");
	DataTable contentlist = get_article_list("about", 0, 0, "status=0");

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(dr["call_index"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a></li>								\r\n\r\n		</ul>    \r\n		</div>\r\n    </div>\r\n    <div class=\"block-foot\"><div><div>-</div></div></div></div><div class=\"block  block-articles  list-240\" id=\"block-articles-89302\" rel=\"89302\">    <div class=\"block-head\">    <div class=\"head-inner\">\r\n	    	<h2 class=\"title\">推荐文章</h2><div class=\"links\"><a class=\"more\" href=\"/articles\">更多</a></div>    </div>\r\n    </div>    <div class=\"block-content clearfix\">\r\n    	<div class=\"item-list\">\r\n	    <ul class=\"clearfix\">\r\n\r\n ");
	DataTable rednews1 = get_article_list("news", 0, 6, "status=0 and is_red=1");

	foreach(DataRow dr in rednews1.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["title"]),29));

	templateBuilder.Append("</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n\r\n			    		</ul>    	</div>\r\n    </div>\r\n    <div class=\"block-foot\"><div><div>-</div></div></div></div>		</div></div>\r\n	</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<!--Footer-->\r\n");

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
