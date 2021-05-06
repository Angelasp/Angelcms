<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Angelcms_Web.install.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Angelcms!NT安装</title>
<meta name="keywords" content="Angelcms!NT安装" />
<meta name="description" content="Angelcms!NT安装" />
<meta name="generator" content="Angelcms!NT 1.0" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="main.css" type="text/css" media="all" />
</head>
<body>
<div class="wrap cl">
	<h2><img alt="Angelcms!NT|Angel工作室|asp.net网站管理系统" src="images/logo.png"/><cite>安装程序</cite></h2>
	<div class="main cl">
		<h1>基本系统环境检测</h1>
		<div class="inner">
            <ol>
			    <%=msg %>
            </ol>
            <span style="color:Red; font-weight:bold">请将上述问题全部解决再刷新该页面继续安装! </span>
		</div>
	</div>
	<div class="copy">
		Angel工作室网站管理系统 &copy; 2009 - 2014 Angelasp Inc. 
	</div>
</div>
</body>
</html>