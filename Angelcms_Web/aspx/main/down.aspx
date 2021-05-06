<%@ Page Language="C#" AutoEventWireup="true" Inherits="Angelcms.Web.UI.Page.article" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>资源下载 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"资源下载 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("-powered by angelasp.com\" name=\"keywords\" />\r\n<meta content=\"资源下载 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("-powered by angelasp.com\" name=\"description\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
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
	templateBuilder.Append("script>\r\n</head>\r\n<body >\r\n<!--顶部-->\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n<!--中间区块-->\r\n<div id=\"content-block\">\r\n<div class=\"content-block-width\">\r\n	<div id=\"bd\">\r\n	<div id=\"innerpg\" class=\"bd-inner\">\r\n    <!--检查这里是否为一样-->\r\n	<div class=\"clearfix layout-innerpg \">	<div class=\"col-main\">\r\n		<div class=\"main-wrap\">\r\n						<div id='articles-list' class=\"block first-block\">\r\n				<div class=\"block-head\">\r\n					<div class=\"head-inner\">\r\n						<h2 class=\"title\">资源下载</h2>\r\n						</div>\r\n				</div>\r\n				<div class=\"block-content clearfix\">\r\n					<div class=\"list-table\">\r\n\r\n      ");
	DataTable category_list = get_category_child_list("down", 0);

	int cdr__loop__id=0;
	foreach(DataRow cdr in category_list.Rows)
	{
		cdr__loop__id++;


	if (cdr__loop__id==1)
	{

	templateBuilder.Append("\r\n      <dl class=\"head green\">\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <dl class=\"head blue\">\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n        <dt>" + Utils.ObjectToStr(cdr["title"]) + "</dt>\r\n        <dd>\r\n          <span><a href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\" title=\"查看更多\" class=\"arrow\">&gt;&gt;</a></span>\r\n        </dd>\r\n      </dl>\r\n      <div class=\"clear\"></div>\r\n      <ul class=\"down_list\">\r\n        ");
	DataTable down_list = get_article_list("down", Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0), 2, "is_red=1");

	int listdr__loop__id=0;
	foreach(DataRow listdr in down_list.Rows)
	{
		listdr__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a title=\"" + Utils.ObjectToStr(listdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\" class=\"pic\"><img width=\"140\" height=\"98\" src=\"" + Utils.ObjectToStr(listdr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(listdr["title"]) + "\" /></a>\r\n          <h2><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\" title=\"note\">" + Utils.ObjectToStr(listdr["title"]) + "</a></h2>\r\n          <div class=\"info\">\r\n            <span class=\"time\">" + Utils.ObjectToStr(listdr["add_time"]) + "</span>\r\n            <span class=\"view\">" + Utils.ObjectToStr(listdr["click"]) + "次浏览</span>\r\n          </div>\r\n          <div class=\"note\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(listdr["content"]),255));

	templateBuilder.Append("</div>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n				</div>\r\n\r\n				</div>\r\n				<div class=\"block-foot\"><div><div>-</div></div></div>\r\n			</div>\r\n			\r\n		</div>\r\n		</div>\r\n		<div class=\"col-sub\">\r\n			<div class=\"block first-block block-products  list-240\" id=\"block-products-89305\" rel=\"89305\">    <div class=\"block-head\">    <div class=\"head-inner\">\r\n	    	<h2 class=\"title\">资源分类</h2><div class=\"links\"><a class=\"more\" href=\"/products\">更多</a></div>    </div>\r\n    </div>    <div class=\"block-content clearfix\">\r\n    	<div class=\"item-list\">\r\n	    <ul class=\"clearfix\">								\r\n        ");
	DataTable category_list1 = get_category_list("down", 0);

	foreach(DataRow dr in category_list1.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><em class=\"arrow\"></em>" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("									\r\n				</ul>   \r\n				</div>\r\n    </div>\r\n    <div class=\"block-foot\"><div><div>-</div></div></div></div><div class=\"block last-block block-articles  list-240\" id=\"block-articles-89306\" rel=\"89306\">    <div class=\"block-head\">    <div class=\"head-inner\">\r\n	    	<h2 class=\"title\">推荐文章</h2><div class=\"links\"><a class=\"more\" href=\"/articles\">更多</a></div>    </div>\r\n    </div>    <div class=\"block-content clearfix\">\r\n    	<div class=\"item-list\">\r\n	    <ul class=\"clearfix\">\r\n ");
	DataTable rednews1 = get_article_list("news", 0, 10, "status=0 and is_red=1");

	foreach(DataRow dr in rednews1.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["title"]),30));

	templateBuilder.Append("</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul> \r\n		  </div>\r\n    </div>\r\n    <div class=\"block-foot\"><div><div>-</div></div></div></div>		</div></div>\r\n	</div>\r\n	</div>\r\n</div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

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
