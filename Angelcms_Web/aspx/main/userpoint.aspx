<%@ Page Language="C#" AutoEventWireup="true" Inherits="Angelcms.Web.UI.Page.userpoint" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>我的积分 - ");
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
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n\r\n</head>\r\n<body >\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n<!--中间区块-->\r\n<div id=\"content-block\">\r\n<div class=\"content-block-width\">\r\n	<div id=\"bd\">\r\n	<div id=\"innerpg\" class=\"bd-inner\">\r\n    <!--检查这里是否为一样-->\r\n	<div class=\"clearfix layout-innerpg \">\r\n		<div class=\"col-main\">\r\n		<div class=\"main-wrap\">\r\n		<div id='htmlpages' class=\"block first-block block-article-view\">\r\n<div class=\"block-head\">\r\n	<div class=\"head-inner\">\r\n	<h1 class=\"title\">\r\n	<span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      我的积分\r\n      <strong>Point</strong>\r\n	  </h1>\r\n	</div>\r\n</div>\r\n    <!--会员中心-->\r\n<div class=\"block-content clearfix\">\r\n	<div class=\"article-content clearfix\" style=\"padding-top:10px;\">\r\n    ");
	if (action=="convert")
	{

	templateBuilder.Append("\r\n    <!--积分兑换-->\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">积分兑换</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\">积分明细</a></li>\r\n      </ul>\r\n    </div>\r\n    <h3>目前的账户积分:<b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</b>分 金额：<b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("</b>元</h3>\r\n    ");
	if (uconfig.pointcashrate==0)
	{

	templateBuilder.Append("\r\n    <h3>目前的积分兑换功能已被关闭！</h3>\r\n    ");
	}
	else if (userModel.amount<1)
	{

	templateBuilder.Append("\r\n    <h3>目前您的余额不足，不能使用积分兑换功能！</h3>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n    <input id=\"hideAmount\" name=\"hideAmount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("\" />\r\n    <input id=\"hideCashrate\" name=\"hideCashrate\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.pointcashrate));
	templateBuilder.Append("\" />\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n        //初始化表单\r\n        AjaxInitForm('point_form', 'btnSubmit', 1, 'turl');\r\n      });\r\n    </");
	templateBuilder.Append("script>\r\n    <form id=\"point_form\" name=\"point_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_convert\">\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>兑换说明：</dt>\r\n        <dd>积分兑换最少金额为1元，兑换比例为：1元等于");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.pointcashrate));
	templateBuilder.Append("个积分</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>积分兑换：</dt>\r\n        <dd><input name=\"txtAmount\" id=\"txtAmount\" type=\"text\" class=\"input small\" style=\"ime-mode:disabled;\" onchange=\"NumConvert(this);\" datatype=\"n\"  nullmsg=\"请输入金额\" sucmsg=\" \" />\r\n        金额转换成 <strong id=\"convertPoint\" class=\"red\" style=\"font-size:16px;\">0</strong> 积分</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>验证用户密码：</dt>\r\n        <dd><input name=\"txtPassword\" id=\"txtPassword\" type=\"password\" class=\"input txt\" datatype=\"*6-20\" nullmsg=\"请输入密码\" sucmsg=\" \" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认转换\" /></dd>\r\n      </dl>\r\n    </div>\r\n    </form>\r\n    <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\" />\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    <!--/积分兑换-->\r\n    \r\n    ");
	}
	else if (action=="list")
	{

	templateBuilder.Append("\r\n    <!--积分明细-->\r\n    <script type=\"text/javascript\">\r\n		function ExecPostBack(checkValue) {\r\n			if (arguments.length == 1) {\r\n				ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_delete', checkValue, 'turl');\r\n			}else{\r\n				var valueArr = '';\r\n				$(\"input[name='checkId']:checked\").each(function(i){\r\n					valueArr += $(this).val();\r\n					if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n						valueArr += \",\"\r\n					}\r\n				});\r\n				ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_delete', valueArr, 'turl');\r\n			}\r\n		}\r\n	</");
	templateBuilder.Append("script>\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">积分兑换</a></li>\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\">积分明细</a></li>\r\n      </ul>\r\n    </div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n      ");
	DataTable list1 = get_user_point_list(10, page, "user_id='"+userModel.id+"'", out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist1 = get_page_link(10, page, totalcount, "userpoint1", action, "__id__");

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list1.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n        <td width=\"150\">" + Utils.ObjectToStr(dr["add_time"]) + "</td>\r\n        <td>" + Utils.ObjectToStr(dr["remark"]) + "</td>\r\n        <td width=\"50\">\r\n          ");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["value"]), 0)>0)
	{

	templateBuilder.Append("\r\n          +" + Utils.ObjectToStr(dr["value"]) + "\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          " + Utils.ObjectToStr(dr["value"]) + "\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </td>\r\n        <td width=\"35\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end for if

	if (totalcount<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\">暂无记录</td></tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist1));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      <div class=\"page_btns\">\r\n        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n        <span class=\"pipe\">|</span>\r\n        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n      </div>\r\n    </div>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\" />\r\n    <!--积分明细-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n</div>\r\n</div>\r\n    <!--会员中心-->\r\n  <div class=\"clear\"></div>\r\n		<div class=\"block-foot\"><div><div>-</div></div></div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"col-sub\">\r\n   <div class=\"block first-block block-products  list-240\" id=\"block-products-89301\" rel=\"89301\"> \r\n   <!--UserCenter navtion-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--UserCenter navtion-->\r\n    <div class=\"block-foot\">\r\n	<div><div>-</div></div></div>\r\n	</div>\r\n	\r\n\r\n	</div>\r\n	\r\n	</div>\r\n	</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<!--Footer-->\r\n");

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
