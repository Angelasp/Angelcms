/****** Object:  Table [dbo].[Age_user_groups]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_Age_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_groups'
GO
/****** Object:  Table [dbo].[Age_user_group_price]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Age_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_group_price'
GO
/****** Object:  Table [dbo].[Age_user_point_log]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[Age_user_oauth_app]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_Age_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth_app'
GO
/****** Object:  Table [dbo].[Age_user_oauth]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_oauth'
GO
/****** Object:  Table [dbo].[Age_user_message]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_Age_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
/****** Object:  Table [dbo].[Age_navigation]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[channel_id] [int] NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_Age_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_navigation'
GO
/****** Object:  Table [dbo].[Age_article_comment]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_Age_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
/****** Object:  Table [dbo].[Age_article_category]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Age_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
/****** Object:  Table [dbo].[Age_article_attribute_value]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_Age_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_value'
GO
/****** Object:  Table [dbo].[Age_article_attribute_field]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_Age_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attribute_field'
GO
/****** Object:  Table [dbo].[Age_article_attach]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](100) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_attach'
GO
/****** Object:  Table [dbo].[Age_article_albums]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article_albums'
GO
/****** Object:  Table [dbo].[Age_article]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[groupids_view] [nvarchar](255) NULL,
	[vote_id] [int] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_Age_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'groupids_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联投票ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'vote_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
/****** Object:  Table [dbo].[Age_mail_template]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_Age_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_mail_template'
GO
/****** Object:  Table [dbo].[Age_link]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_feedback]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_express]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_Age_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_express'
GO
/****** Object:  Table [dbo].[Age_channel_category]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_channel_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_Age_CHANNEL_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_category'
GO
/****** Object:  Table [dbo].[Age_manager_role]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_Age_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role'
GO
/****** Object:  Table [dbo].[Age_manager_log]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_log'
GO
/****** Object:  Table [dbo].[Age_user_amount_log]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_Age_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号但保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_amount_log', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
/****** Object:  Table [dbo].[Age_payment]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_Age_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_payment'
GO
/****** Object:  Table [dbo].[Age_orders]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_Age_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_orders'
GO
/****** Object:  Table [dbo].[Age_order_goods]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_title] [nvarchar](100) NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_Age_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_order_goods'
GO
/****** Object:  Table [dbo].[Age_manager]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_Age_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager'
GO
/****** Object:  Table [dbo].[Age_channel]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Age_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_group_price] [tinyint] NULL,
	[page_size] [int] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_Age_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'is_group_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每页显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'page_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel'
GO
/****** Object:  Table [dbo].[Age_manager_role_value]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Age_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_manager_role_value'
GO
/****** Object:  View [dbo].[view_channel_products]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_products] as SELECT Age_article.*,Age_article_attribute_value.sub_title,Age_article_attribute_value.goods_no,Age_article_attribute_value.stock_quantity,Age_article_attribute_value.market_price,Age_article_attribute_value.sell_price,Age_article_attribute_value.point FROM Age_article_attribute_value INNER JOIN Age_article ON Age_article_attribute_value.article_id = Age_article.id WHERE Age_article.channel_id=2
GO
/****** Object:  View [dbo].[view_channel_photo]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_photo] as SELECT Age_article.*,Age_article_attribute_value.source,Age_article_attribute_value.author FROM Age_article_attribute_value INNER JOIN Age_article ON Age_article_attribute_value.article_id = Age_article.id WHERE Age_article.channel_id=3
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_news] as SELECT Age_article.*,Age_article_attribute_value.source,Age_article_attribute_value.author FROM Age_article_attribute_value INNER JOIN Age_article ON Age_article_attribute_value.article_id = Age_article.id WHERE Age_article.channel_id=1
GO
/****** Object:  View [dbo].[view_channel_down]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_down] as SELECT Age_article.*,Age_article_attribute_value.source,Age_article_attribute_value.author FROM Age_article_attribute_value INNER JOIN Age_article ON Age_article_attribute_value.article_id = Age_article.id WHERE Age_article.channel_id=4
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT Age_article.* FROM Age_article_attribute_value INNER JOIN Age_article ON Age_article_attribute_value.article_id = Age_article.id WHERE Age_article.channel_id=5
GO
/****** Object:  Table [dbo].[Age_users]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[nick_name] [nvarchar](100) NULL,
	[avatar] [nvarchar](255) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[mobile] [nvarchar](20) NULL,
	[qq] [nvarchar](30) NULL,
	[address] [nvarchar](255) NULL,
	[safe_question] [nvarchar](255) NULL,
	[safe_answer] [nvarchar](255) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](30) NULL,
 CONSTRAINT [PK_Age_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'safe_question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'safe_answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
/****** Object:  Table [dbo].[Age_user_login_log]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_Age_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
/****** Object:  Table [dbo].[Age_user_code]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_Age_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[Age_channel_field]    Script Date: 09/11/2013 11:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
 CONSTRAINT [PK_Age_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Age_channel_field'
GO
/****** Object:  Default [DF__Age_artic__chann__3D2915A8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__Age_artic__categ__3E1D39E1]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__Age_artic__call___3F115E1A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__Age_artic__link___40058253]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__Age_artic__img_u__40F9A68C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__Age_artic__seo_t__41EDCAC5]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__Age_artic__seo_k__42E1EEFE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__Age_artic__seo_d__43D61337]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__Age_artic__zhaiy__44CA3770]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [zhaiyao]
GO
/****** Object:  Default [DF__Age_artic__sort___45BE5BA9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_artic__click__46B27FE2]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__Age_artic__statu__47A6A41B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__Age_artic__group__489AC854]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ('') FOR [groupids_view]
GO
/****** Object:  Default [DF__Age_artic__vote___498EEC8D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [vote_id]
GO
/****** Object:  Default [DF__Age_artic__is_ms__4A8310C6]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__Age_artic__is_to__4B7734FF]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__Age_artic__is_re__4C6B5938]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__Age_artic__is_ho__4D5F7D71]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__Age_artic__is_sl__4E53A1AA]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__Age_artic__is_sy__4F47C5E3]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__Age_artic__add_t__503BEA1C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_artic__artic__3864608B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_albums] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__Age_artic__thumb__395884C4]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_albums] ADD  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__Age_artic__origi__3A4CA8FD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_albums] ADD  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__Age_artic__remar__3B40CD36]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_albums] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_artic__add_t__3C34F16F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_albums] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_artic__artic__30C33EC3]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__Age_artic__file___31B762FC]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__Age_artic__file___32AB8735]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__Age_artic__file___339FAB6E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__Age_artic__file___3493CFA7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__Age_artic__down___3587F3E0]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__Age_artic__point__367C1819]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_artic__add_t__37703C52]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attach] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_artic__title__236943A5]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__Age_artic__data___245D67DE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__Age_artic__data___25518C17]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__Age_artic__item___2645B050]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__Age_artic__defau__2739D489]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__Age_artic__is_re__282DF8C2]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__Age_artic__is_pa__29221CFB]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__Age_artic__is_ht__2A164134]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__Age_artic__edito__2B0A656D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__Age_artic__valid__2BFE89A6]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__Age_artic__valid__2CF2ADDF]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__Age_artic__valid__2DE6D218]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__Age_artic__sort___2EDAF651]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_artic__is_sy__2FCF1A8A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__Age_artic__sourc__6166761E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ('') FOR [source]
GO
/****** Object:  Default [DF__Age_artic__autho__625A9A57]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ('') FOR [author]
GO
/****** Object:  Default [DF__Age_artic__goods__634EBE90]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ('') FOR [goods_no]
GO
/****** Object:  Default [DF__Age_artic__stock__6442E2C9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF__Age_artic__marke__65370702]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ((0)) FOR [market_price]
GO
/****** Object:  Default [DF__Age_artic__sell___662B2B3B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ((0)) FOR [sell_price]
GO
/****** Object:  Default [DF__Age_artic__point__671F4F74]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_attribute_value] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_artic__call___58D1301D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__Age_artic__paren__59C55456]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__Age_artic__class__5AB9788F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__Age_artic__sort___5BAD9CC8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_artic__link___5CA1C101]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__Age_artic__img_u__5D95E53A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__Age_artic__seo_t__5E8A0973]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__Age_artic__seo_k__5F7E2DAC]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__Age_artic__seo_d__607251E5]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_category] ADD  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__Age_artic__chann__51300E55]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__Age_artic__artic__5224328E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__Age_artic__paren__531856C7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__Age_artic__user___540C7B00]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__Age_artic__user___55009F39]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__Age_artic__is_lo__55F4C372]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_artic__add_t__56E8E7AB]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_artic__is_re__57DD0BE4]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_article_comment] ADD  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__Age_chann__categ__719CDDE7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__Age_channe__name__72910220]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__Age_chann__title__73852659]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__Age_chann__is_al__74794A92]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__Age_chann__is_at__756D6ECB]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF__Age_chann__is_gr__76619304]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((0)) FOR [is_group_price]
GO
/****** Object:  Default [DF__Age_chann__page___7755B73D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((0)) FOR [page_size]
GO
/****** Object:  Default [DF__Age_chann__sort___7849DB76]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_chann__title__74AE54BC]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__Age_chann__build__75A278F5]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__Age_chann__templ__76969D2E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__Age_chann__domai__778AC167]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__Age_chann__is_de__787EE5A0]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__Age_chann__sort___797309D9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_category] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_expre__expre__6EF57B66]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__Age_expre__expre__6FE99F9F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__Age_expre__websi__70DDC3D8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__Age_expre__remar__71D1E811]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_expre__sort___72C60C4A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_expre__is_lo__73BA3083]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_express] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_feedb__add_t__6C190EBB]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_feedback] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_feedb__reply__6D0D32F4]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_feedback] ADD  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__Age_feedb__is_lo__6E01572D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_feedback] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_link__is_ima__68487DD7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_link] ADD  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__Age_link__sort_i__693CA210]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_link] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_link__is_red__6A30C649]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_link] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__Age_link__add_ti__6B24EA82]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_link] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_mail___is_sy__6754599E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_mail_template] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__Age_manag__role___6BE40491]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT ((2)) FOR [role_type]
GO
/****** Object:  Default [DF__Age_manag__real___6CD828CA]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT ('') FOR [real_name]
GO
/****** Object:  Default [DF__Age_manag__telep__6DCC4D03]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__Age_manag__email__6EC0713C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__Age_manag__is_lo__6FB49575]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_manag__add_t__70A8B9AE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_manag__add_t__7B5B524B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_manag__is_sy__7A672E12]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager_role] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__Age_navig__nav_t__59FA5E80]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__Age_naviga__name__5AEE82B9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__Age_navig__title__5BE2A6F2]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__Age_navig__sub_t__5CD6CB2B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__Age_navig__link___5DCAEF64]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__Age_navig__sort___5EBF139D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_navig__is_lo__5FB337D6]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_navig__remar__60A75C0F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_navig__paren__619B8048]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__Age_navig__class__628FA481]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [class_list]
GO
/****** Object:  Default [DF__Age_navig__class__6383C8BA]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((1)) FOR [class_layer]
GO
/****** Object:  Default [DF__Age_navig__chann__6477ECF3]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__Age_navig__actio__656C112C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__Age_navig__is_sy__66603565]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_navigation] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__Age_order__goods__681373AD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_order_goods] ADD  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__Age_order__real___690797E6]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_order_goods] ADD  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__Age_order__quant__69FBBC1F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_order_goods] ADD  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__Age_order__point__6AEFE058]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_order_goods] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_order__order__0B91BA14]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__Age_order__trade__0C85DE4D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__Age_order__user___0D7A0286]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__Age_order__user___0E6E26BF]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__Age_order__payme__0F624AF8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__Age_order__payme__10566F31]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__Age_order__payme__114A936A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__Age_order__expre__123EB7A3]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__Age_order__expre__1332DBDC]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__Age_order__expre__14270015]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__Age_order__expre__151B244E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__Age_order__accep__160F4887]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__Age_order__post___17036CC0]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__Age_order__telph__17F790F9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__Age_order__mobil__18EBB532]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__Age_orders__area__19DFD96B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__Age_order__addre__1AD3FDA4]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__Age_order__messa__1BC821DD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__Age_order__remar__1CBC4616]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_order__payab__1DB06A4F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__Age_order__real___1EA48E88]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__Age_order__order__1F98B2C1]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__Age_order__point__208CD6FA]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_order__statu__2180FB33]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__Age_order__add_t__22751F6C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_orders] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_payme__img_u__05D8E0BE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__Age_paymen__type__06CD04F7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__Age_payme__pound__07C12930]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__Age_payme__pound__08B54D69]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__Age_payme__sort___09A971A2]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_payme__is_lo__0A9D95DB]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_payment] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_user___order__7C4F7684]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__Age_user___payme__7D439ABD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__Age_user___value__7E37BEF6]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__Age_user___remar__7F2BE32F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_user___statu__00200768]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__Age_user___add_t__01142BA1]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_amount_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_user___count__0B5CAFEA]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_code] ADD  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__Age_user___statu__0C50D423]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_code] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__Age_user___add_t__0D44F85C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_code] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_user___artic__4BAC3F29]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_group_price] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__Age_user___group__4CA06362]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_group_price] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__Age_user___price__4D94879B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_group_price] ADD  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__Age_user___grade__44FF419A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__Age_user___upgra__45F365D3]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__Age_user___amoun__46E78A0C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__Age_user___point__47DBAE45]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_user___is_de__48CFD27E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__Age_user___is_up__49C3F6B7]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__Age_user___is_lo__4AB81AF0]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_groups] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_user___user___078C1F06]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_login_log] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__Age_user___remar__0880433F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_login_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_user___login__09746778]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_login_log] ADD  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__Age_user___login__0A688BB1]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_login_log] ADD  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__Age_user_m__type__5812160E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_message] ADD  CONSTRAINT [DF__Age_user_m__type__5812160E]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__Age_user___is_re__59063A47]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_message] ADD  CONSTRAINT [DF__Age_user___is_re__59063A47]  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__Age_user___post___59FA5E80]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_message] ADD  CONSTRAINT [DF__Age_user___post___59FA5E80]  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__Age_user___oauth__5535A963]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth] ADD  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__Age_user___add_t__5629CD9C]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_user___title__4F7CD00D]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__Age_user___img_u__5070F446]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__Age_user___remar__5165187F]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__Age_user___sort___52593CB8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__Age_user___is_lo__534D60F1]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__Age_user___api_p__5441852A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_oauth_app] ADD  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__Age_user___add_t__4E88ABD4]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_point_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__Age_users__group__793DFFAF]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__Age_users__email__7A3223E8]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__Age_users__nick___7B264821]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__Age_users__avata__7C1A6C5A]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__Age_users__sex__7D0E9093]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('保密') FOR [sex]
GO
/****** Object:  Default [DF__Age_users__telph__7E02B4CC]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__Age_users__mobil__7EF6D905]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__Age_users__qq__7FEAFD3E]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__Age_users__safe___00DF2177]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [safe_question]
GO
/****** Object:  Default [DF__Age_users__safe___01D345B0]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ('') FOR [safe_answer]
GO
/****** Object:  Default [DF__Age_users__amoun__02C769E9]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__Age_users__point__03BB8E22]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__Age_users__exp__04AFB25B]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__Age_users__statu__05A3D694]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__Age_users__reg_t__0697FACD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users] ADD  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  ForeignKey [FK_Age_CHANN_REFERENCE_Age_CATEGORY]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel]  WITH CHECK ADD  CONSTRAINT [FK_Age_CHANN_REFERENCE_Age_CATEGORY] FOREIGN KEY([category_id])
REFERENCES [dbo].[Age_channel_category] ([id])
GO
ALTER TABLE [dbo].[Age_channel] CHECK CONSTRAINT [FK_Age_CHANN_REFERENCE_Age_CATEGORY]
GO
/****** Object:  ForeignKey [FK_Age_CHANN_REFERENCE_Age_CHANN_FIELD]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_Age_CHANN_REFERENCE_Age_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[Age_channel] ([id])
GO
ALTER TABLE [dbo].[Age_channel_field] CHECK CONSTRAINT [FK_Age_CHANN_REFERENCE_Age_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_Age_MANAG_REFERENCE_Age_MANAG_ROLE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager]  WITH CHECK ADD  CONSTRAINT [FK_Age_MANAG_REFERENCE_Age_MANAG_ROLE] FOREIGN KEY([role_id])
REFERENCES [dbo].[Age_manager_role] ([id])
GO
ALTER TABLE [dbo].[Age_manager] CHECK CONSTRAINT [FK_Age_MANAG_REFERENCE_Age_MANAG_ROLE]
GO
/****** Object:  ForeignKey [FK_Age_MANAG_REFERENCE_Age_MANAG]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_Age_MANAG_REFERENCE_Age_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[Age_manager_role] ([id])
GO
ALTER TABLE [dbo].[Age_manager_role_value] CHECK CONSTRAINT [FK_Age_MANAG_REFERENCE_Age_MANAG]
GO
/****** Object:  ForeignKey [FK_Age_ORDER_REFERENCE_Age_ORDER]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_Age_ORDER_REFERENCE_Age_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[Age_orders] ([id])
GO
ALTER TABLE [dbo].[Age_order_goods] CHECK CONSTRAINT [FK_Age_ORDER_REFERENCE_Age_ORDER]
GO
/****** Object:  ForeignKey [FK_Age_USER__REFERENCE_Age_USERS_CODE]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_code]  WITH CHECK ADD  CONSTRAINT [FK_Age_USER__REFERENCE_Age_USERS_CODE] FOREIGN KEY([user_id])
REFERENCES [dbo].[Age_users] ([id])
GO
ALTER TABLE [dbo].[Age_user_code] CHECK CONSTRAINT [FK_Age_USER__REFERENCE_Age_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_Age_USER__REFERENCE_Age_USERS_LOG]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_user_login_log]  WITH CHECK ADD  CONSTRAINT [FK_Age_USER__REFERENCE_Age_USERS_LOG] FOREIGN KEY([user_id])
REFERENCES [dbo].[Age_users] ([id])
GO
ALTER TABLE [dbo].[Age_user_login_log] CHECK CONSTRAINT [FK_Age_USER__REFERENCE_Age_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_Age_USERS_REFERENCE_Age_USER_]    Script Date: 09/11/2013 11:43:50 ******/
ALTER TABLE [dbo].[Age_users]  WITH CHECK ADD  CONSTRAINT [FK_Age_USERS_REFERENCE_Age_USER_] FOREIGN KEY([group_id])
REFERENCES [dbo].[Age_user_groups] ([id])
GO
ALTER TABLE [dbo].[Age_users] CHECK CONSTRAINT [FK_Age_USERS_REFERENCE_Age_USER_]
GO
