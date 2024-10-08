USE [acadx]
GO
/****** Object:  Table [dbo].[audit]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](100) NOT NULL,
	[column_name] [nvarchar](100) NOT NULL,
	[operation] [int] NOT NULL,
	[value_id] [int] NOT NULL,
	[old_value] [nvarchar](max) NULL,
	[new_value] [nvarchar](max) NULL,
	[changed_by] [int] NOT NULL,
	[changed_on] [datetime] NOT NULL,
 CONSTRAINT [PK_audit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[config]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config](
	[component] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[configuration] [nvarchar](250) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_config] PRIMARY KEY CLUSTERED 
(
	[component] ASC,
	[category] ASC,
	[configuration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_permissions]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_group_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[is_active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_integrators]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_integrators](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[placeholder_text] [nvarchar](50) NOT NULL,
	[redirect_url] [nvarchar](max) NOT NULL,
	[icon] [nvarchar](50) NOT NULL,
	[client_id] [nvarchar](max) NOT NULL,
	[client_secret] [nvarchar](max) NOT NULL,
	[client_tenant_id] [nvarchar](max) NULL,
	[is_active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_sso_integrators] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[std_audit_operations]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[std_audit_operations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[operation_type] [nvarchar](50) NOT NULL,
	[created_on] [datetime] NOT NULL,
 CONSTRAINT [PK_std_audit_operations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[std_permissions]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[std_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[operation] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[is_active] [bit] NOT NULL,
	[created_on] [datetime] NOT NULL,
 CONSTRAINT [PK_std_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titles]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[titles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[is_active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_titles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_groups]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_user_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25/08/24 06:08:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [int] NULL,
	[first_name] [nvarchar](100) NOT NULL,
	[middle_name] [nvarchar](100) NULL,
	[last_name] [nvarchar](100) NOT NULL,
	[dob] [date] NULL,
	[email] [nvarchar](250) NOT NULL,
	[password] [nvarchar](max) NULL,
	[sso_integrator] [int] NULL,
	[is_active] [bit] NOT NULL,
	[created_by] [int] NULL,
	[created_on] [datetime] NOT NULL,
	[updated_by] [int] NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users]    Script Date: 25/08/24 06:08:46 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_users] ON [dbo].[users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[audit] ADD  CONSTRAINT [DF_audit_changed_on]  DEFAULT (getdate()) FOR [changed_on]
GO
ALTER TABLE [dbo].[config] ADD  CONSTRAINT [DF_config_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[group_permissions] ADD  CONSTRAINT [DF_group_permissions_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [DF_groups_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[sso_integrators] ADD  CONSTRAINT [DF_sso_integrators_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[sso_integrators] ADD  CONSTRAINT [DF_sso_integrators_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[std_audit_operations] ADD  CONSTRAINT [DF_std_audit_operations_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[std_permissions] ADD  CONSTRAINT [DF_std_permissions_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[std_permissions] ADD  CONSTRAINT [DF_std_permissions_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[titles] ADD  CONSTRAINT [DF_titles_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[titles] ADD  CONSTRAINT [DF_titles_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[user_groups] ADD  CONSTRAINT [DF_user_groups_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[user_groups] ADD  CONSTRAINT [DF_user_groups_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_created_on]  DEFAULT (getdate()) FOR [created_on]
GO
ALTER TABLE [dbo].[audit]  WITH CHECK ADD  CONSTRAINT [FK_audit_std_audit_operations] FOREIGN KEY([operation])
REFERENCES [dbo].[std_audit_operations] ([id])
GO
ALTER TABLE [dbo].[audit] CHECK CONSTRAINT [FK_audit_std_audit_operations]
GO
ALTER TABLE [dbo].[group_permissions]  WITH CHECK ADD  CONSTRAINT [FK_group_permissions_groups] FOREIGN KEY([group_id])
REFERENCES [dbo].[groups] ([id])
GO
ALTER TABLE [dbo].[group_permissions] CHECK CONSTRAINT [FK_group_permissions_groups]
GO
ALTER TABLE [dbo].[group_permissions]  WITH CHECK ADD  CONSTRAINT [FK_group_permissions_std_permissions] FOREIGN KEY([permission_id])
REFERENCES [dbo].[std_permissions] ([id])
GO
ALTER TABLE [dbo].[group_permissions] CHECK CONSTRAINT [FK_group_permissions_std_permissions]
GO
ALTER TABLE [dbo].[user_groups]  WITH CHECK ADD  CONSTRAINT [FK_user_groups_groups] FOREIGN KEY([group_id])
REFERENCES [dbo].[groups] ([id])
GO
ALTER TABLE [dbo].[user_groups] CHECK CONSTRAINT [FK_user_groups_groups]
GO
ALTER TABLE [dbo].[user_groups]  WITH CHECK ADD  CONSTRAINT [FK_user_groups_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_groups] CHECK CONSTRAINT [FK_user_groups_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_sso_integrators] FOREIGN KEY([sso_integrator])
REFERENCES [dbo].[sso_integrators] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_sso_integrators]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_titles] FOREIGN KEY([title])
REFERENCES [dbo].[titles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_titles]
GO
