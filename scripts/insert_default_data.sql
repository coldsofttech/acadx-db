USE [acadx]
GO
SET IDENTITY_INSERT [dbo].[groups] ON 
GO
INSERT [dbo].[groups] ([id], [name], [description], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (1, N'AcadX Administrators', N'Group of AcadX Administrators', 1, 1, CAST(N'2024-08-24T09:30:39.730' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[groups] ([id], [name], [description], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (2, N'User', N'Group of normal users', 1, 1, CAST(N'2024-08-24T09:44:37.957' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[groups] OFF
GO
SET IDENTITY_INSERT [dbo].[std_permissions] ON 
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (1, N'titles', N'create_title', N'Allows creating a new title entry in the Titles table.', 1, CAST(N'2024-08-24T09:37:39.327' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (2, N'titles', N'view_title', N'Allows viewing details of titles in the Titles table.', 1, CAST(N'2024-08-24T09:37:53.303' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (3, N'titles', N'update_title', N'Allows updating existing title entries in the Titles table.', 1, CAST(N'2024-08-24T09:38:13.223' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (4, N'titles', N'delete_title', N'Allows deleting title entries from the Titles table.', 1, CAST(N'2024-08-24T09:38:32.020' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (5, N'titles', N'export_title', N'Allows exporting title data to an external format (e.g., CSV, Excel).', 1, CAST(N'2024-08-24T09:39:42.197' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (6, N'titles', N'import_title', N'Allows importing title data from an external format into the table.', 1, CAST(N'2024-08-24T09:39:58.350' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (7, N'titles', N'archive_title', N'Allows archiving a title entry, making it inactive but not deleted.', 1, CAST(N'2024-08-24T09:40:17.207' AS DateTime))
GO
INSERT [dbo].[std_permissions] ([id], [category], [operation], [description], [is_active], [created_on]) VALUES (8, N'titles', N'restore_title', N'Allows restoring an archived title entry back to active status.', 1, CAST(N'2024-08-24T09:40:33.470' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[std_permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[group_permissions] ON 
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (1, 1, 1, 1, CAST(N'2024-08-24T09:43:04.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (2, 1, 2, 1, CAST(N'2024-08-24T09:43:09.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (3, 1, 3, 1, CAST(N'2024-08-24T09:43:16.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (4, 1, 4, 1, CAST(N'2024-08-24T09:43:19.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (5, 1, 5, 1, CAST(N'2024-08-24T09:43:22.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (6, 1, 6, 1, CAST(N'2024-08-24T09:43:24.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (7, 1, 7, 1, CAST(N'2024-08-24T09:43:28.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (8, 1, 8, 1, CAST(N'2024-08-24T09:43:31.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[group_permissions] ([id], [group_id], [permission_id], [created_by], [created_on], [updated_by], [updated_on]) VALUES (9, 2, 2, 1, CAST(N'2024-08-24T09:45:17.687' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[group_permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[titles] ON 
GO
INSERT [dbo].[titles] ([id], [title], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (1, N'Mr.', 1, 1, CAST(N'2024-08-24T09:33:12.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[titles] ([id], [title], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (2, N'Mrs.', 1, 1, CAST(N'2024-08-24T09:33:17.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[titles] ([id], [title], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (3, N'Ms.', 1, 1, CAST(N'2024-08-24T09:33:21.473' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[titles] ([id], [title], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (4, N'Dr.', 1, 1, CAST(N'2024-08-24T09:33:26.793' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[titles] ([id], [title], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (5, N'Prof.', 1, 1, CAST(N'2024-08-24T09:33:30.453' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[titles] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [title], [first_name], [middle_name], [last_name], [dob], [email], [password], [sso_integrator], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (1, NULL, N'AcadX', NULL, N'Admin', NULL, N'admin@acadx.com', NULL, NULL, 1, NULL, CAST(N'2024-08-24T09:29:41.607' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[user_groups] ON 
GO
INSERT [dbo].[user_groups] ([id], [user_id], [group_id], [is_active], [created_by], [created_on], [updated_by], [updated_on]) VALUES (1, 1, 1, 1, 1, CAST(N'2024-08-24T09:42:32.850' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[user_groups] OFF
GO
SET IDENTITY_INSERT [dbo].[std_audit_operations] ON 
GO
INSERT [dbo].[std_audit_operations] ([id], [operation_type], [created_on]) VALUES (1, N'DELETE', CAST(N'2024-08-24T09:23:09.357' AS DateTime))
GO
INSERT [dbo].[std_audit_operations] ([id], [operation_type], [created_on]) VALUES (2, N'INSERT', CAST(N'2024-08-24T09:23:23.277' AS DateTime))
GO
INSERT [dbo].[std_audit_operations] ([id], [operation_type], [created_on]) VALUES (3, N'UPDATE', CAST(N'2024-08-24T09:23:25.837' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[std_audit_operations] OFF
GO
INSERT [dbo].[config] ([component], [category], [configuration], [value], [created_by], [created_on], [updated_by], [updated_on]) VALUES (N'AcadX', N'GENERAL', N'ENVIRONMENT', N'dev', 1, CAST(N'2024-08-25T17:15:04.337' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[config] ([component], [category], [configuration], [value], [created_by], [created_on], [updated_by], [updated_on]) VALUES (N'AcadX UI', N'COOKIE', N'MAX_AGE', N'86400000', 1, CAST(N'2024-08-25T16:55:27.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[config] ([component], [category], [configuration], [value], [created_by], [created_on], [updated_by], [updated_on]) VALUES (N'AcadX UI', N'COOKIE', N'PATH', N'/', 1, CAST(N'2024-08-25T16:56:28.530' AS DateTime), NULL, NULL)
GO
