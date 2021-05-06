<%@ Page Language="C#" AutoEventWireup="true" Inherits="Angelcms.Web.UI.Page.shopping" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>购物中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/Default");
	templateBuilder.Append("/js/cart.js\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n<!--中间区块-->\r\n<div id=\"content-block\">\r\n<div class=\"content-block-width\">\r\n	<div id=\"bd\">\r\n	<div id=\"innerpg\" class=\"bd-inner\">\r\n    <!--检查这里是否为一样-->\r\n	<div class=\"clearfix layout-innerpg \">\r\n\r\n\r\n    ");
	if (action=="cart")
	{

	templateBuilder.Append("\r\n    <!--购物车-->\r\n    <h1 class=\"main_tit\">\r\n      <span><a onclick=\"DeleteCart(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("','0');\" href=\"javascript:;\">清空购物车</a></span>\r\n      我的购物车<strong>Shopping Cart</strong>\r\n    </h1>\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li class=\"selected\"><span>1</span>放进购物车</li>\r\n        <li><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    \r\n    <table width=\"938\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart_table\">\r\n      <tr>\r\n        <th width=\"64\"></th>\r\n        <th align=\"left\">商品名称</th>\r\n        <th width=\"80\" align=\"center\">积分</th>\r\n        <th width=\"80\" align=\"center\">单价</th>\r\n        <th width=\"80\" align=\"center\">数量</th>\r\n        <th width=\"80\" align=\"center\">优惠</th>\r\n        <th width=\"100\" align=\"center\">金额小计</th>\r\n        <th width=\"100\" align=\"center\">积分小计</th>\r\n        <th width=\"50\" align=\"center\">操作</th>\r\n      </tr>\r\n      ");
	IList<Angelcms.Model.cart_items> ls1 = get_cart_list();

	foreach(Angelcms.Model.cart_items modelt in ls1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" /></a></td>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a></td>\r\n        <td align=\"center\">\r\n          ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n          +\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n        </td>\r\n        <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.price));
	templateBuilder.Append("<input name=\"goods_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\" /></td>\r\n        <td align=\"center\">\r\n          <a href=\"javascript:;\" class=\"reduce\" title=\"减一\" onclick=\"CartComputNum(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("', -1);\">减一</a>\r\n          <input type=\"text\" name=\"goods_quantity\" class=\"input\" style=\"width:30px;text-align:center;ime-mode:Disabled;\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("\" onblur=\"CartAmountTotal(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("');\" onkeypress=\"return (/[\\d]/.test(String.fromCharCode(event.keyCode)))\" />\r\n          <a href=\"javascript:;\" class=\"subjoin\" title=\"加一\" onclick=\"CartComputNum(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("', 1);\">加一</a>\r\n        </td>\r\n        <td align=\"center\">￥<label name=\"discount_amount\">");
	templateBuilder.Append(((modelt.price-modelt.user_price)*modelt.quantity).ToString());

	templateBuilder.Append("</label></td>\r\n        <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥<label name=\"real_amount\">");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("</label></font></td>\r\n        <td align=\"center\">\r\n          <font color=\"#FF0000\" size=\"2\">\r\n            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <label name=\"point_count\">");
	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("</label>\r\n          </font>\r\n        </td>\r\n        <td align=\"center\"><a onclick=\"DeleteCart(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("','");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end for if

	if (ls1.Count<1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td colspan=\"9\">\r\n          <div class=\"msg_tips\">\r\n            <div class=\"ico warning\"></div>\r\n            <div class=\"msg\">\r\n              <strong>购物车没有商品！</strong>\r\n              <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n            </div>\r\n          </div>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n      <tr>\r\n        <th colspan=\"9\" align=\"right\">\r\n          商品件数：");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_quantity));
	templateBuilder.Append(" 件 &nbsp;&nbsp; 商品总金额（不含运费）：<font color=\"#FF0000\" size=\"2\">￥");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</font>元 &nbsp;&nbsp; 总积分：<font color=\"#FF0000\" size=\"2\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_point));
	templateBuilder.Append("分</font>\r\n        </th>\r\n      </tr>\r\n      \r\n	</table>\r\n    <div class=\"line20\"></div>\r\n    <div class=\"right\">\r\n      <a class=\"btn\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">继续购物</a>\r\n      ");
	if (cartModel.total_quantity==0)
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-gray\">不能结算</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-success marL10\" href=\"");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("\">马上去结算</a>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <!--/购物车-->\r\n    \r\n    ");
	}
	else if (action=="confirm")
	{

	templateBuilder.Append("\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n	<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function () {\r\n          //表单提交\r\n          AjaxInitForm('order_form', 'btnSubmit', 0);\r\n      });\r\n    </");
	templateBuilder.Append("script>\r\n    <!--结算中心-->\r\n    <h1 class=\"main_tit\">\r\n      <span><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">返回</a></span>\r\n      确认订单信息<strong>Confirm order</strong>\r\n    </h1>\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li class=\"item\"><span>1</span>放进购物车</li>\r\n        <li class=\"selected\"><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    \r\n    <form name=\"order_form\" id=\"order_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=order_save\">\r\n    <h3 class=\"bar_tit\">1、收货信息</h3>\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>收货人姓名：</dt>\r\n        <dd><input name=\"accept_name\" id=\"accept_name\" type=\"text\" class=\"input txt wide\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\" datatype=\"s2-20\" sucmsg=\" \" /><span class=\"Validform_checktip\">*收货人姓名</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>收货地址：</dt>\r\n        <dd><input name=\"address\" id=\"address\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.address));
	templateBuilder.Append("\" datatype=\"*2-100\" sucmsg=\" \" style=\"width:300px;\" /><span class=\"Validform_checktip\">*收货人的详细地址</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>邮政编码：</dt>\r\n        <dd><input name=\"post_code\" id=\"post_code\" type=\"txt\" class=\"input txt\" /><span class=\"Validform_checktip\">所在地区的邮政编码，非必填</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>手机号码：</dt>\r\n        <dd><input name=\"mobile\" id=\"mobile\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\" datatype=\"m\" sucmsg=\" \" /><span class=\"Validform_checktip\">*收货人的手机号码</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>联系电话：</dt>\r\n        <dd><input name=\"telphone\" id=\"telphone\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.telphone));
	templateBuilder.Append("\" /><span class=\"Validform_checktip\">收货人的联系电话，非必填</span></dd>\r\n      </dl>\r\n    </div>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">2、支付方式</h3>\r\n    <ul class=\"item_box\">\r\n      ");
	DataTable list1 = get_payment_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	int dr1__loop__id=0;
	foreach(DataRow dr1 in list1.Rows)
	{
		dr1__loop__id++;


	decimal poundage_amount = get_payment_poundage_amount(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0));

	templateBuilder.Append("\r\n      <li>\r\n        ");
	if (dr1__loop__id==(list1.Rows.Count))
	{

	templateBuilder.Append("\r\n        <label><input name=\"payment_id\" type=\"radio\" onclick=\"PaymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" datatype=\"*\" sucmsg=\" \" /><input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <label><input name=\"payment_id\" type=\"radio\" onclick=\"PaymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" /><input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <em>手续费：");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("元</em></label>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">3、配送方式</h3>\r\n    <ul class=\"item_box\">\r\n      ");
	DataTable list2 = get_express_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	int dr2__loop__id=0;
	foreach(DataRow dr2 in list2.Rows)
	{
		dr2__loop__id++;


	templateBuilder.Append("\r\n      <li>\r\n        ");
	if (dr2__loop__id==(list2.Rows.Count))
	{

	templateBuilder.Append("\r\n        <label><input name=\"express_id\" type=\"radio\" onclick=\"FreightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" datatype=\"*\" sucmsg=\" \" /><input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <label><input name=\"express_id\" type=\"radio\" onclick=\"FreightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" /><input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <em>费用：" + Utils.ObjectToStr(dr2["express_fee"]) + "元</em></label>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">4、商品清单</h3>\r\n    <table width=\"938\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart_table\">\r\n      <tr>\r\n        <th width=\"64\"></th>\r\n        <th align=\"left\">商品名称</th>\r\n        <th width=\"80\" align=\"center\">积分</th>\r\n        <th width=\"80\" align=\"center\">单价</th>\r\n        <th width=\"80\" align=\"center\">数量</th>\r\n        <th width=\"80\" align=\"center\">优惠</th>\r\n        <th width=\"100\" align=\"center\">金额小计</th>\r\n        <th width=\"100\" align=\"center\">积分小计</th>\r\n      </tr>\r\n      ");
	IList<Angelcms.Model.cart_items> ls2 = get_cart_list();

	foreach(Angelcms.Model.cart_items modelt in ls2)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" /></a></td>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a></td>\r\n        <td align=\"center\">\r\n          ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n          +\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n        </td>\r\n        <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.price));
	templateBuilder.Append("<input name=\"goods_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\" /></td>\r\n        <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n        <td align=\"center\">￥<label name=\"discount_amount\">");
	templateBuilder.Append(((modelt.price-modelt.user_price)*modelt.quantity).ToString());

	templateBuilder.Append("</label></td>\r\n        <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥<label name=\"real_amount\">");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("</label></font></td>\r\n        <td align=\"center\">\r\n          <font color=\"#FF0000\" size=\"2\">\r\n            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <label name=\"point_count\">");
	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("</label>\r\n            </font>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	if (ls2.Count<1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td colspan=\"8\">\r\n          <div class=\"msg_tips\">\r\n            <div class=\"ico warning\"></div>\r\n            <div class=\"msg\">\r\n              <strong>购物车没有商品！</strong>\r\n              <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n            </div>\r\n          </div>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n	</table>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">5、结算信息</h3>\r\n    <div>\r\n      <div class=\"left\">\r\n        <h4>订单留言<span>字数控制在100个字符内</span></h4>\r\n        <textarea name=\"message\" class=\"input\" style=\"width:250px;height:35px;\"></textarea>\r\n      </div>\r\n      \r\n      <div class=\"right\" style=\"text-align:right;line-height:40px;\">\r\n        商品件数：<font color=\"#FF0000\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_quantity));
	templateBuilder.Append("</font> 件 &nbsp; &nbsp;&nbsp;总积分：<font color=\"#FF0000\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_point));
	templateBuilder.Append("</font> 分 &nbsp; &nbsp;&nbsp;商品金额：<font color=\"#FF0000\">￥<label id=\"goods_amount\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</label></font>&nbsp; &nbsp;+ &nbsp; 运费：<font color=\"#FF0000\">￥<label id=\"express_fee\">0.00</label></font>&nbsp; &nbsp;+ &nbsp; 支付手续费：<font color=\"#FF0000\">￥<label id=\"payment_fee\">0.00</label></font>\r\n        \r\n        <br />\r\n        <b class=\"font18\">应付总金额：<font color=\"#FF0000\">￥<label id=\"order_amount\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</label></font></b>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"line20\"></div>\r\n    <div class=\"right\">\r\n      <a class=\"btn\" href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">返回修改</a>\r\n      ");
	if (get_cart_quantity()>0)
	{

	templateBuilder.Append("\r\n      <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"确认提交\" class=\"btn btn-success marL10\" />\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-gray marL10\">确认提交</a>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <!--/结算中心-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n<div class=\"clear\"></div>\r\n\r\n\r\n	</div>\r\n	</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<!--Footer-->\r\n");

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
