using System;
using System.Collections.Generic;

namespace Angelcms_Common
{
  public  class AgeKeys
    {

        //系统版本
        /// <summary>
        /// 版本号全称
        /// </summary>
        public const string ASSEMBLY_VERSION = "1.1";
        /// <summary>
        /// 版本年号
        /// </summary>
        public const string ASSEMBLY_YEAR = "2014";
        //File======================================================
        /// <summary>
        /// 站点配置文件名
        /// </summary>
        public const string FILE_SITE_XML_CONFING = "Configpath";
        /// <summary>
        /// URL配置文件名
        /// </summary>
        public const string FILE_URL_XML_CONFING = "Urlspath";
        /// <summary>
        /// 用户配置文件名
        /// </summary>
        public const string FILE_USER_XML_CONFING = "Userpath";
        /// <summary>
        /// 订单配置文件名
        /// </summary>
        public const string FILE_ORDER_XML_CONFING = "Orderpath";
        /// <summary>
        /// 升级代码
        /// </summary>
        public const string FILE_URL_UPGRADE_CODE = "BC6D4612EB6084C6168A05924B5D4974DFD74ABA4D28653D8AF25170BF179EAFFA1DB0E259E99B00A7A26EEEC017B801";
        /// <summary>
        /// 消息代码
        /// </summary>
        public const string FILE_URL_NOTICE_CODE = "BC6D4612EB6084C6168A05924B5D4974DFD74ABA4D28653D3B77962D57F21B1F6B80F5F639C8D3728EE9C62047AB15FC";

        //Directory==================================================
        /// <summary>
        /// ASPX目录名
        /// </summary>
        public const string DIRECTORY_REWRITE_ASPX = "aspx";
        /// <summary>
        /// HTML目录名
        /// </summary>
        public const string DIRECTORY_REWRITE_HTML = "html";
        /// <summary>
        /// 插件目录名
        /// </summary>
        public const string DIRECTORY_REWRITE_PLUGIN = "Plug_in";

        //Cache======================================================
        /// <summary>
        /// 站点配置
        /// </summary>
        public const string CACHE_SITE_CONFIG = "Age_cache_site_config";
        /// <summary>
        /// 用户配置
        /// </summary>
        public const string CACHE_USER_CONFIG = "Age_cache_user_config";
        /// <summary>
        /// 订单配置
        /// </summary>
        public const string CACHE_ORDER_CONFIG = "Age_cache_order_config";
        /// HttpModule映射类
        /// </summary>
        public const string CACHE_SITE_HTTP_MODULE = "Age_cache_http_module";
        /// <summary>
        /// 绑定域名
        /// </summary>
        public const string CACHE_SITE_HTTP_DOMAIN = "Age_cache_http_domain";
        /// <summary>
        /// 站点一级目录名
        /// </summary>
        public const string CACHE_SITE_DIRECTORY = "Age_cache_site_directory";
        /// <summary>
        /// 站点ASPX目录名
        /// </summary>
        public const string CACHE_SITE_ASPX_DIRECTORY = "Age_cache_site_aspx_directory";
        /// <summary>
        /// URL重写映射表
        /// </summary>
        public const string CACHE_SITE_URLS = "Age_cache_site_urls";
        /// <summary>
        /// URL重写LIST列表
        /// </summary>
        public const string CACHE_SITE_URLS_LIST = "Age_cache_site_urls_list";
        /// <summary>
        /// 升级通知
        /// </summary>
        public const string CACHE_OFFICIAL_UPGRADE = "Age_official_upgrade";
        /// <summary>
        /// 官方消息
        /// </summary>
        public const string CACHE_OFFICIAL_NOTICE = "Age_official_notice";

        //Session=====================================================
        /// <summary>
        /// 网页验证码
        /// </summary>
        public const string SESSION_CODE = "Age_session_code";
        /// <summary>
        /// 后台管理员
        /// </summary>
        public const string SESSION_ADMIN_INFO = "Age_session_admin_info";
        /// <summary>
        /// 会员用户
        /// </summary>
        public const string SESSION_USER_INFO = "Age_session_user_info";

        //Cookies=====================================================
        /// <summary>
        /// 防重复顶踩KEY
        /// </summary>
        public const string COOKIE_DIGG_KEY = "Age_cookie_digg_key";
        /// <summary>
        /// 防重复评论KEY
        /// </summary>
        public const string COOKIE_COMMENT_KEY = "Age_cookie_comment_key";
        /// <summary>
        /// 防止下载重复扣各分
        /// </summary>
        public const string COOKIE_DOWNLOAD_KEY = "Age_download_attach_key";
        /// <summary>
        /// 记住会员用户名
        /// </summary>
        public const string COOKIE_USER_NAME_REMEMBER = "Age_cookie_user_name_remember";
        /// <summary>
        /// 记住会员密码
        /// </summary>
        public const string COOKIE_USER_PWD_REMEMBER = "Age_cookie_user_pwd_remember";
        /// <summary>
        /// 购物车
        /// </summary>
        public const string COOKIE_SHOPPING_CART = "Age_cookie_shopping_cart";
        /// <summary>
        /// 返回上一页
        /// </summary>
        public const string COOKIE_URL_REFERRER = "Age_cookie_url_referrer";


    }
}
