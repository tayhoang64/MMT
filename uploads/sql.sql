USE [JobRecruitment]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](255) NULL,
	[Title] [varchar](255) NULL,
	[EmailAddress] [varchar](255) NULL,
	[Phone] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [int] NULL,
	[City] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[PersonalLink] [varchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[AboutMe] [varchar](255) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificates]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificates](
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[CertificateName] [varchar](255) NULL,
	[Organization] [varchar](255) NULL,
	[IssueMonth] [int] NULL,
	[IssueYear] [int] NULL,
	[CertificateUrl] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__Certific__BBF8A7C1D0296A80] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[CompanyType] [varchar](255) NULL,
	[CompanySize] [varchar](255) NULL,
	[CompanyCountry] [varchar](255) NULL,
	[WorkingDay] [varchar](255) NULL,
	[OvertimePolicy] [int] NULL,
	[Logo] [varchar](255) NULL,
	[ConfirmCompany] [bit] NOT NULL,
	[EmailCompany] [nvarchar](max) NULL,
	[EmailOwner] [nvarchar](max) NULL,
	[Hotline] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
 CONSTRAINT [PK__Company__2D971CAC8BA259A9] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyImage]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyImage](
	[CompanyImageId] [int] IDENTITY(1,1) NOT NULL,
	[File] [varchar](255) NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK__CompanyI__D7A1961C5A069327] PRIMARY KEY CLUSTERED 
(
	[CompanyImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CVId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[File] [varchar](255) NULL,
	[LastUpdateAt] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[TemplateId] [int] NOT NULL,
 CONSTRAINT [PK__CV__A04CFFA3A6554FEB] PRIMARY KEY CLUSTERED 
(
	[CVId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[EducationId] [int] IDENTITY(1,1) NOT NULL,
	[School] [varchar](255) NULL,
	[Major] [varchar](255) NULL,
	[IsStudying] [int] NULL,
	[FromMonth] [datetime] NULL,
	[FromYear] [datetime] NULL,
	[ToMonth] [datetime] NULL,
	[ToYear] [datetime] NULL,
	[AdditionalDetail] [varchar](255) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__Educatio__4BBE3805208D23C4] PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [varchar](255) NULL,
	[Salary] [nvarchar](max) NULL,
	[Location] [varchar](255) NULL,
	[WorkStyle] [varchar](255) NULL,
	[PostedDay] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[EndDay] [datetime2](7) NULL,
	[ExperienceYear] [int] NULL,
	[RecruitmentCount] [int] NULL,
	[Status] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__Job__056690C2C636F866] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSkills]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSkills](
	[JobId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK__JobSkill__689C99DA79B69042] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeySkills]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeySkills](
	[CompanyId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK__KeySkill__406D15B471541684] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MySkills]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MySkills](
	[UserId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[Level] [varchar](255) NULL,
 CONSTRAINT [PK__MySkills__7A72C55435ED2F6E] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](255) NULL,
	[IsDoing] [int] NULL,
	[StartMonth] [int] NULL,
	[StartYear] [int] NULL,
	[EndMonth] [int] NULL,
	[EndYear] [int] NULL,
	[ShortDescription] [varchar](255) NULL,
	[ProjectUrl] [varchar](255) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__Project__761ABEF05448DADD] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[UserId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[FileCV] [varchar](255) NULL,
	[SentAt] [datetime] NULL,
 CONSTRAINT [PK__Recruitm__27DEA540591D55FB] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](255) NULL,
 CONSTRAINT [PK__Skills__DFA09187C2594975] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NULL,
	[File] [varchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UploadedBy] [int] NULL,
	[LastUpdatedAt] [datetime] NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK__Template__F87ADD271B1B38EC] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkExperience]    Script Date: 12/6/2024 8:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkExperience](
	[WEId] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[IsWorking] [int] NULL,
	[FromMonth] [int] NULL,
	[FromYear] [int] NULL,
	[ToMonth] [int] NULL,
	[ToYear] [int] NULL,
	[Description] [varchar](255) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__WorkExpe__FA3100514870CC87] PRIMARY KEY CLUSTERED 
(
	[WEId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241014031452_T1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241014075532_T2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241016063838_T3', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241023055347_FixPhone', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241104022621_FixCompanyV2', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241107015649_AddStaffTable', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241107085439_T4', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241108025127_UpdateJobV4', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241108031011_UpdateJobV5', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241125014015_T5', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241204061405_UpdateTemplateTable', N'8.0.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', N'5822d069-fecf-4b55-ba0b-cea5535b0b3d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'CVDecorator', N'CVDECORATOR', N'fc7a0008-f1a2-4d75-a059-811cf3ee35ca')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Treasurer', N'TREASURER', N'4d18c500-3a08-4944-aa3b-01b3b35d665d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'CompanyOwner', N'COMPANYOWNER', N'50684449-19ca-44cb-8281-8096199cf655')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (5, N'User', N'USER', N'4bbd8061-9da0-4cc3-ace4-3a40591abd25')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1002, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1003, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1004, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1005, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1006, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1007, 5)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1008, 5)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'Hoàng Minh Tây', N'Tayden', NULL, N'0988910527', NULL, 0, N'TPHCM', N'Le van viet', N'https://www.linkedin.com/in/hoang-minh-tay-308402313/', N'https://res.cloudinary.com/dapvdplse/image/upload/v1733215121/JobRecruitment/Avatars/rmdqujwl6qd2vbstu2pw.png', N'Just a normal person who trying to be better every day.', N'tayhoang64@gmail.com', N'TAYHOANG64@GMAIL.COM', N'tayhoang64@gmail.com', N'TAYHOANG64@GMAIL.COM', 1, NULL, N'NV2LMEIQHHTKUWN25ZL3D2QFWZY3D53I', N'325f2e97-02ca-444b-a121-f36360f04e99', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, NULL, NULL, N'vie30914@inohm.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvana', N'NGUYENVANA', N'vie30914@inohm.com', N'VIE30914@INOHM.COM', 1, N'AQAAAAIAAYagAAAAED/qUZzWjbpzr8TIoitBggf/7JxRXZ0QOvWwrhIBVYqgHDFFGamo7SCwELcRdXSvUw==', N'UBDQ7T6EAWXTRLBAIHCY6FGNZEXLNXTC', N'77b4615a-2174-449d-a56f-072d59d15b27', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (3, NULL, NULL, N'xidija7318@cashbn.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nguyenvanb', N'NGUYENVANB', N'xidija7318@cashbn.com', N'XIDIJA7318@CASHBN.COM', 1, N'AQAAAAIAAYagAAAAEBfaEdUNenyIUj9sZvMuLp8wisQlkqMM7GWyH/6CFzzwtr3wg/nl5XQ6rVRkN3rCpQ==', N'H236GHFKA5OM6J5A6BGTERANT3BHKP7Z', N'c9ddfd8a-3ead-4cbb-8364-8e49ac06bda1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1002, NULL, NULL, N'pby39398@inohm.com', NULL, NULL, NULL, NULL, NULL, NULL, N'https://res.cloudinary.com/dapvdplse/image/upload/v1733130441/JobRecruitment/Avatars/iklsoh3dvvejsd54spn5.png', NULL, N'pby39398@inohm.com', N'PBY39398@INOHM.COM', N'pby39398@inohm.com', N'PBY39398@INOHM.COM', 1, N'AQAAAAIAAYagAAAAENOqKLJ6qNkRhOLyhEk3IpwO+3Jx6RmSmpL2wH6gL8q8LlKWafp3JS5EVp21E85gmQ==', N'D6IS76UXBLHHZCGWA6N75CVCXUSZVNPJ', N'166412b3-7fe3-4d04-858e-11c2e2910bf7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1003, NULL, NULL, N'lsl47023@kisoq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'lsl47023@kisoq.com', N'LSL47023@KISOQ.COM', N'lsl47023@kisoq.com', N'LSL47023@KISOQ.COM', 1, N'AQAAAAIAAYagAAAAEC7DDHjVbfE14M6d1XvtpnoGUrery0BWuNQbEFK35YhIvvMUHq+bQSBPPcSb/wJ3KA==', N'4WEXEYRDSM3J53QQFD2TAVHRQOARMU2U', N'6e8d873d-0032-4b8c-94f3-a85b13ece687', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1004, NULL, NULL, N'kye35292@kisoq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'kye35292@kisoq.com', N'KYE35292@KISOQ.COM', N'kye35292@kisoq.com', N'KYE35292@KISOQ.COM', 1, N'AQAAAAIAAYagAAAAEBEEMYX9PRgX2sOqns7S5SIB/1mmoD4SxdAqrw7rzC/XsQxuxHFJbSf/5Ek9gXPqfg==', N'IR43EFEH5K7KFG7HDQFJXKSIAZRRH7UH', N'a9e663df-de2e-4978-9a41-2986c2ce986c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1005, NULL, NULL, N'skz72296@inohm.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'skz72296@inohm.com', N'SKZ72296@INOHM.COM', N'skz72296@inohm.com', N'SKZ72296@INOHM.COM', 1, N'AQAAAAIAAYagAAAAENhKC1vTSPjJESu78290Pr+3Jmg2CBqOEB7gyEQMd3pn2DPYXnaPSK1V6qSfr9bZNA==', N'LB2A6CVXZZXEFSJMUA4Y7D25NFS3FCWV', N'9163abf4-363e-4718-a696-6e43c9a5288e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1006, NULL, NULL, N'jkd20358@kisoq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jkd20358@kisoq.com', N'JKD20358@KISOQ.COM', N'jkd20358@kisoq.com', N'JKD20358@KISOQ.COM', 1, N'AQAAAAIAAYagAAAAEKNMvtXLeKHaCDV1VjIa43OO546VsGo0AgXFRCsJtXjUsfkOk4VCkL7/2ITm2q9rxw==', N'UPT2A6PUTO563HJQHAJ3KU7KA4IQCCM5', N'57e00627-c92e-45af-ba19-f2f92dce56e6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1007, NULL, NULL, N'ooa84727@kisoq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ooa84727@kisoq.com', N'OOA84727@KISOQ.COM', N'ooa84727@kisoq.com', N'OOA84727@KISOQ.COM', 1, N'AQAAAAIAAYagAAAAEONRbxoBzKis0ysdMPOfp5qaUHOT30jswNgGN6kXLalmUV5itXvegN9MPO8oxIOgMQ==', N'ZPNU24JMYWKFECWZSQLRPVZ6IR4LVBYL', N'3a08180c-e476-4578-94c7-21721b2b8f02', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Title], [EmailAddress], [Phone], [DateOfBirth], [Gender], [City], [Address], [PersonalLink], [Avatar], [AboutMe], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1008, N'Mr.West', N'fgerfgre', N'yer99659@inohm.com', N'0988910527', NULL, 0, N'TPHCM', N'Le van viet', N'https://www.linkedin.com/in/hoang-minh-tay-308402313/', N'https://res.cloudinary.com/dapvdplse/image/upload/v1733189391/JobRecruitment/Avatars/xruyf9ndn1u2elotfwyf.png', N'eftgbrtfgb', N'yer99659@inohm.com', N'YER99659@INOHM.COM', N'yer99659@inohm.com', N'YER99659@INOHM.COM', 1, N'AQAAAAIAAYagAAAAECgduaKSGEm3FzmU2qcvaA3L54jkhv76x5Kouvukbi5ZU5HVJtP+bGGeIrCbDSyVQA==', N'3NH7YG427NRVA53A45KAW7LFXLLEKCHK', N'ec483d78-58ae-494d-8c9e-ff1c9a9ceccb', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (1, N'TMA', N'Le van viet', N'hellooo i''m TMA. ', N'IT', N'+900', N'Vietnam', N'T2-T6', 1, N'https://res.cloudinary.com/dapvdplse/image/upload/v1732501511/JobRecruitment/Avatars/gu8c4a2e9a3upeppudxa.png', 1, N'vunguyen10a8.nt@gmail.com', N'vie30914@inohm.com', NULL, NULL)
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (3, N'Microsoft Corporation', N'Redmond, WA, United States', N'Microsoft develops, manufactures, licenses, supports, and sells computer software, electronics, and personal computers.', N'Technology', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/4/44/Microsoft_logo.svg', 0, N'contact@microsoft.com', N'lsl47023@kisoq.com', N'1-800-642-7676', N'https://www.microsoft.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (5, N'Amazon.com, Inc.', N'410 Terry Avenue North, Seattle, WA, United States', N'Amazon is an online retail giant that also provides cloud computing services.', N'E-commerce', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg', 1, N'contact@amazon.com', N'skz72296@inohm.com', N'1-888-280-4331', N'https://www.amazon.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (6, N'Facebook, Inc.', N'1 Hacker Way, Menlo Park, CA 94025, United States', N'Facebook is a social media platform that allows users to connect with friends and communities.', N'Technology', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg', 1, N'contact@facebook.com', N'jkd20358@kisoq.com', N'1-650-543-4800', N'https://www.facebook.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (7, N'Tesla, Inc.', N'3500 Deer Creek Road, Palo Alto, CA 94304, United States', N'Tesla designs and manufactures electric vehicles and renewable energy solutions.', N'Automotive', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/e/ec/Tesla_logo.png', 0, N'contact@tesla.com', N'ooa84727@kisoq.com', N'1-888-518-3752', N'https://www.tesla.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (8, N'IBM Corporation', N'1 New Orchard Road, Armonk, NY 10504, United States', N'IBM is a multinational technology company that offers cloud computing, AI, and hardware solutions.', N'Technology', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/7/74/IBM_logo.svg', 0, N'contact@ibm.com', N'yer99659@inohm.com', N'1-914-499-1900', N'https://www.ibm.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (9, N'Nike, Inc.', N'One Bowerman Drive, Beaverton, OR 97005, United States', N'Nike is a global leader in sportswear, footwear, and sports equipment.', N'Retail', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logo_of_Nike%2C_Inc..svg', 0, N'contact@nike.com', N'pby39398@inohm.com', N'1-800-806-6453', N'https://www.nike.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (10, N'Samsung Electronics', N'129, Samsung-ro, Yeongtong-gu, Suwon, Gyeonggi-do, South Korea', N'Samsung is a global leader in consumer electronics and digital media technologies.', N'Technology', N'Large', N'South Korea', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/2/24/Samsung_Logo.svg', 0, N'contact@samsung.com', N'lsl47023@kisoq.com', N'1-800-726-7864', N'https://www.samsung.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (11, N'Toyota Motor Corporation', N'1-1, Toyota-cho, Toyota City, Aichi Prefecture, Japan', N'Toyota is a multinational automobile manufacturer.', N'Automotive', N'Large', N'Japan', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/9/9d/Toyota_logo.svg', 0, N'contact@toyota.com', N'kye35292@kisoq.com', N'1-800-331-4331', N'https://www.toyota-global.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (12, N'Spotify Technology S.A.', N'Birger Jarlsgatan 61, Stockholm, Sweden', N'Spotify is a music streaming service that provides music and podcasts.', N'Technology', N'Large', N'Sweden', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/9/9f/Spotify_logo_with_text.svg', 0, N'contact@spotify.com', N'skz72296@inohm.com', N'1-877-775-2997', N'https://www.spotify.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (13, N'Netflix, Inc.', N'100 Winchester Circle, Los Gatos, CA 95032, United States', N'Netflix is a global streaming service for movies and TV shows.', N'Technology', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/0/0f/Netflix_logo.svg', 0, N'contact@netflix.com', N'jkd20358@kisoq.com', N'1-866-579-7172', N'https://www.netflix.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (14, N'Adobe Inc.', N'345 Park Avenue, San Jose, CA 95110, United States', N'Adobe is a multinational software company that produces creative software and solutions.', N'Technology', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/0/0e/Adobe_Logo.svg', 0, N'contact@adobe.com', N'ooa84727@kisoq.com', N'1-800-833-6687', N'https://www.adobe.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (15, N'Coca-Cola Company', N'1 Coca-Cola Plaza, Atlanta, GA 30313, United States', N'Coca-Cola is a global beverage corporation, most famous for its soft drink.', N'Beverage', N'Large', N'United States', N'Monday to Friday', 1, N'https://upload.wikimedia.org/wikipedia/commons/4/4f/Coca-Cola_logo.svg', 0, N'contact@coca-cola.com', N'yer99659@inohm.com', N'1-800-GET-COKE', N'https://www.coca-cola.com')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Address], [Description], [CompanyType], [CompanySize], [CompanyCountry], [WorkingDay], [OvertimePolicy], [Logo], [ConfirmCompany], [EmailCompany], [EmailOwner], [Hotline], [Website]) VALUES (1002, N'CMC', N'ckewibclwiebclew', N'<p>bteabaetb</p>', N'Outsourcing Companies', N'range', N'Taiwan', NULL, 1, N'https://res.cloudinary.com/dapvdplse/image/upload/v1733373221/JobRecruitment/Avatars/sxhzgwrazfk3npqfqlqv.png', 0, N'cmc@gmail.com', N'xidija7318@cashbn.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyImage] ON 

INSERT [dbo].[CompanyImage] ([CompanyImageId], [File], [CompanyId]) VALUES (1, N'https://res.cloudinary.com/dapvdplse/image/upload/v1732501512/JobRecruitment/CompanyImages/goxgcdcupjkn3pk4ggbm.jpg', 1)
INSERT [dbo].[CompanyImage] ([CompanyImageId], [File], [CompanyId]) VALUES (2, N'https://res.cloudinary.com/dapvdplse/image/upload/v1733373222/JobRecruitment/CompanyImages/vgzgwln3tc12hxqmjjfw.png', 1002)
INSERT [dbo].[CompanyImage] ([CompanyImageId], [File], [CompanyId]) VALUES (3, N'https://res.cloudinary.com/dapvdplse/image/upload/v1733373223/JobRecruitment/CompanyImages/rvbahmueimas7d6ferdf.webp', 1002)
INSERT [dbo].[CompanyImage] ([CompanyImageId], [File], [CompanyId]) VALUES (4, N'https://res.cloudinary.com/dapvdplse/image/upload/v1733373224/JobRecruitment/CompanyImages/s4jhbbjz9qo5i1fmm0wv.png', 1002)
SET IDENTITY_INSERT [dbo].[CompanyImage] OFF
GO
SET IDENTITY_INSERT [dbo].[CV] ON 

INSERT [dbo].[CV] ([CVId], [UserId], [File], [LastUpdateAt], [CreatedAt], [TemplateId]) VALUES (1, 1008, N'/public/CVs/CV_1008_caa2c0be-4723-46ac-b6df-8fd1e1b71298.html', CAST(N'2024-12-04T14:00:41.347' AS DateTime), CAST(N'2024-12-04T14:00:41.347' AS DateTime), 2)
INSERT [dbo].[CV] ([CVId], [UserId], [File], [LastUpdateAt], [CreatedAt], [TemplateId]) VALUES (2, 1008, N'/public/CVs/CV_1008_034d3eb5-63bb-4c43-8525-27acc3e762b8.html', CAST(N'2024-12-04T14:26:09.287' AS DateTime), CAST(N'2024-12-04T14:24:29.223' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[CV] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (1, N'Devops Engineer', N'Wage Agreement', N'Hà N?i', N'Lam viec tai nha', CAST(N'2024-11-25T09:59:27.567' AS DateTime), N' Th?c hi?n tri?n khai, cài d?t h? t?ng, các gi?i pháp công ngh? CLOUD nhu AWS, GCP.', CAST(N'2024-11-30T02:55:29.4610000' AS DateTime2), 2, 3, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (2, N'Qu?n Lý D? Án (Project Manager)', N'22 - 27 Triệu', N'Hà N?i', N'Lam viec tai cong ty', CAST(N'2024-11-25T10:02:37.243' AS DateTime), N' Ti?p c?n khách hàng d? n?m b?t yêu c?u t? khách hàng t? giai do?n d?u chua h?p d?ng. T? dó phân tích, dánh giá nhu c?u/mong mu?n và tu v?n xây d?ng gi?i pháp th?c hi?n t?i khách hàng.', CAST(N'2025-11-11T02:55:29.4610000' AS DateTime2), 3, 2, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (3, N'Senior Graphic Design', N'17-22 Triệu', N'Hà N?i', N'Lam viec tai cong ty/Tai nha', CAST(N'2024-11-25T10:04:04.020' AS DateTime), N'T?o ra nh?ng ý tu?ng và khái ni?m rõ ràng song song v?i nhân s? làm n?i dung', CAST(N'2025-11-25T02:55:29.4610000' AS DateTime2), 5, 3, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (4, N'btrbb', N'ebr33', N'b3erb', N'Remote', CAST(N'2024-12-05T11:19:53.633' AS DateTime), N'chvliwehlw', CAST(N'2024-12-27T17:00:00.0000000' AS DateTime2), 4, 4, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (5, N'btrbb', N'ebr33', N'b3erb', N'Remote', CAST(N'2024-12-05T11:19:59.640' AS DateTime), N'chvliwehlw', CAST(N'2024-12-27T17:00:00.0000000' AS DateTime2), 4, 4, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (6, N'job TMA', N'1300000', N'HCM', N'On-site', CAST(N'2024-12-05T11:23:16.520' AS DateTime), N'cfecec', CAST(N'2024-12-20T17:00:00.0000000' AS DateTime2), 3, 6, 0, 1, 3)
INSERT [dbo].[Job] ([JobId], [JobName], [Salary], [Location], [WorkStyle], [PostedDay], [Description], [EndDay], [ExperienceYear], [RecruitmentCount], [Status], [CompanyId], [UserId]) VALUES (7, N'job TMA 1', N'1500000', N'HCM', N'On-site', CAST(N'2024-12-05T11:24:12.843' AS DateTime), N'whelifhwle', CAST(N'2024-12-29T20:00:00.0000000' AS DateTime2), 3, 6, 0, 1, 3)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (1, 1)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (1, 2)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (7, 2)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (1, 3)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (4, 6)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (5, 6)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (2, 7)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (7, 7)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (2, 8)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (2, 9)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (3, 11)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (3, 12)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (3, 13)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (3, 14)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (6, 69)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (4, 96)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (5, 96)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (4, 97)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (5, 97)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (4, 98)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (5, 98)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (7, 98)
INSERT [dbo].[JobSkills] ([JobId], [SkillId]) VALUES (6, 99)
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (1, N'Python')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (2, N'JavaScript')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (3, N'Java')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (4, N'C#')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (5, N'C++')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (6, N'Ruby')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (7, N'PHP')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (8, N'HTML')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (9, N'CSS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (10, N'SQL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (11, N'Kotlin')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (12, N'Swift')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (13, N'TypeScript')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (14, N'Go')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (15, N'Rust')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (16, N'Dart')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (17, N'R')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (18, N'MATLAB')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (19, N'Scala')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (20, N'Perl')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (21, N'Shell Scripting')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (22, N'Assembly')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (23, N'Visual Basic')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (24, N'Objective-C')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (25, N'VHDL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (26, N'COBOL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (27, N'Fortran')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (28, N'Erlang')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (29, N'Lua')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (30, N'F#')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (31, N'Haskell')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (32, N'Groovy')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (33, N'Delphi')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (34, N'PowerShell')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (35, N'Apache Spark')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (36, N'Hadoop')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (37, N'TensorFlow')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (38, N'PyTorch')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (39, N'Keras')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (40, N'Docker')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (41, N'Kubernetes')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (42, N'Git')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (43, N'SVN')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (44, N'CI/CD')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (45, N'Linux')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (46, N'Unix')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (47, N'AWS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (48, N'Azure')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (49, N'Google Cloud')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (50, N'Firebase')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (51, N'MongoDB')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (52, N'PostgreSQL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (53, N'MySQL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (54, N'MariaDB')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (55, N'Redis')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (56, N'Elasticsearch')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (57, N'Cassandra')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (58, N'BigQuery')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (59, N'Snowflake')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (60, N'Tableau')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (61, N'Power BI')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (62, N'GraphQL')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (63, N'REST API')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (64, N'SOAP')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (65, N'WebSocket')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (66, N'JSON')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (67, N'XML')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (68, N'Bootstrap')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (69, N'Material-UI')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (70, N'SASS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (71, N'LESS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (72, N'Tailwind CSS')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (73, N'jQuery')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (74, N'React')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (75, N'Vue.js')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (76, N'Angular')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (77, N'Node.js')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (78, N'Django')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (79, N'Flask')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (80, N'Spring Boot')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (81, N'ASP.NET')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (82, N'Express.js')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (83, N'Laravel')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (84, N'Symfony')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (85, N'CodeIgniter')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (86, N'Ruby on Rails')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (87, N'Unity')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (88, N'Unreal Engine')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (89, N'Blender')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (90, N'3ds Max')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (91, N'AutoCAD')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (92, N'SolidWorks')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (93, N'Jenkins')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (94, N'Ansible')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (95, N'Terraform')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (96, N'Puppet')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (97, N'Nagios')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (98, N'Prometheus')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (99, N'Grafana')
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON 

INSERT [dbo].[Staffs] ([StaffId], [UserId], [CompanyId], [Role]) VALUES (1, 3, 1, 0)
INSERT [dbo].[Staffs] ([StaffId], [UserId], [CompanyId], [Role]) VALUES (2, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[Staffs] OFF
GO
SET IDENTITY_INSERT [dbo].[Template] ON 

INSERT [dbo].[Template] ([TemplateId], [Title], [File], [CreatedAt], [UploadedBy], [LastUpdatedAt], [Image]) VALUES (1, N'template 534', N'/public/Templates/055628e7-6549-452d-b4e6-99e520bd7781.html', CAST(N'2024-12-04T05:48:11.767' AS DateTime), 2, CAST(N'2024-12-04T06:25:19.070' AS DateTime), N'https://res.cloudinary.com/dapvdplse/image/upload/v1733293520/JobRecruitment/Templates/r7ssi16h5jfkscugruvm.png')
INSERT [dbo].[Template] ([TemplateId], [Title], [File], [CreatedAt], [UploadedBy], [LastUpdatedAt], [Image]) VALUES (2, N'template 4345', N'/public/Templates/e675071f-4684-44dc-a2d8-f630da083dfa.html', CAST(N'2024-12-04T05:54:41.910' AS DateTime), 2, CAST(N'2024-12-04T06:25:45.063' AS DateTime), N'https://res.cloudinary.com/dapvdplse/image/upload/v1733293547/JobRecruitment/Templates/nhmp36tp2w3tw9a6d1ci.png')
INSERT [dbo].[Template] ([TemplateId], [Title], [File], [CreatedAt], [UploadedBy], [LastUpdatedAt], [Image]) VALUES (4, N'123', N'/public/Templates/801331a4-193d-4995-9d3e-aeef65a92061.html', CAST(N'2024-12-04T06:19:33.160' AS DateTime), 2, CAST(N'2024-12-04T06:19:33.160' AS DateTime), N'https://res.cloudinary.com/dapvdplse/image/upload/v1733293174/JobRecruitment/Templates/zlas6s2skvse96uexb09.jpg')
SET IDENTITY_INSERT [dbo].[Template] OFF
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT (CONVERT([bit],(0))) FOR [ConfirmCompany]
GO
ALTER TABLE [dbo].[Job] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Status]
GO
ALTER TABLE [dbo].[Job] ADD  DEFAULT ((0)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[Job] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Certificates]  WITH CHECK ADD  CONSTRAINT [FK__Certifica__UserI__5629CD9C] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Certificates] CHECK CONSTRAINT [FK__Certifica__UserI__5629CD9C]
GO
ALTER TABLE [dbo].[CompanyImage]  WITH CHECK ADD  CONSTRAINT [FK__CompanyIm__Compa__5CD6CB2B] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyImage] CHECK CONSTRAINT [FK__CompanyIm__Compa__5CD6CB2B]
GO
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK__CV__TemplateId__5FB337D6] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([TemplateId])
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK__CV__TemplateId__5FB337D6]
GO
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK__CV__UserId__5812160E] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK__CV__UserId__5812160E]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK__Education__UserI__52593CB8] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK__Education__UserI__52593CB8]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK__Certifica__UserI__5629CDkug] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK__Certifica__UserI__5629CDkug]
GO
ALTER TABLE [dbo].[JobSkills]  WITH CHECK ADD  CONSTRAINT [FK__JobSkills__JobId__5DCAEF64] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO
ALTER TABLE [dbo].[JobSkills] CHECK CONSTRAINT [FK__JobSkills__JobId__5DCAEF64]
GO
ALTER TABLE [dbo].[JobSkills]  WITH CHECK ADD  CONSTRAINT [FK__JobSkills__Skill__5AEE82B9] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[JobSkills] CHECK CONSTRAINT [FK__JobSkills__Skill__5AEE82B9]
GO
ALTER TABLE [dbo].[KeySkills]  WITH CHECK ADD  CONSTRAINT [FK__KeySkills__Compa__5BE2A6F2] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[KeySkills] CHECK CONSTRAINT [FK__KeySkills__Compa__5BE2A6F2]
GO
ALTER TABLE [dbo].[KeySkills]  WITH CHECK ADD  CONSTRAINT [FK__KeySkills__Skill__59FA5E80] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[KeySkills] CHECK CONSTRAINT [FK__KeySkills__Skill__59FA5E80]
GO
ALTER TABLE [dbo].[MySkills]  WITH CHECK ADD  CONSTRAINT [FK__MySkills__SkillI__59063A47] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[MySkills] CHECK CONSTRAINT [FK__MySkills__SkillI__59063A47]
GO
ALTER TABLE [dbo].[MySkills]  WITH CHECK ADD  CONSTRAINT [FK__MySkills__UserId__5441852A] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MySkills] CHECK CONSTRAINT [FK__MySkills__UserId__5441852A]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK__Project__UserId__5535A963] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK__Project__UserId__5535A963]
GO
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK__Recruitme__JobId__5EBF139D] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK__Recruitme__JobId__5EBF139D]
GO
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK__Recruitme__UserI__571DF1D5] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK__Recruitme__UserI__571DF1D5]
GO
ALTER TABLE [dbo].[WorkExperience]  WITH CHECK ADD  CONSTRAINT [FK__WorkExper__UserI__534D60F1] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WorkExperience] CHECK CONSTRAINT [FK__WorkExper__UserI__534D60F1]
GO
