USE [LTWEB]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](15) NULL,
	[name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[idcard] [nvarchar](10) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[telephone] [nvarchar](10) NULL,
	[birthday] [datetime] NULL,
	[nationality] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DETAILS]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAILS](
	[reservationid] [nvarchar](20) NOT NULL,
	[idcard] [nvarchar](10) NULL,
	[idticket] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[reservationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DISCOUNT]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISCOUNT](
	[discountid] [nvarchar](10) NOT NULL,
	[DayOfStart] [date] NULL,
	[DayOfEnd] [date] NULL,
	[NumOfDiscount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[discountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLANE]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLANE](
	[idplane] [nvarchar](10) NOT NULL,
	[destination] [nvarchar](50) NULL,
	[departFrom] [nvarchar](50) NULL,
	[airport] [nvarchar](50) NULL,
	[airline] [nvarchar](50) NULL,
	[flighttime] [date] NULL,
	[times] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idplane] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 5/19/2022 6:31:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[idticket] [nvarchar](20) NOT NULL,
	[typeticket] [bit] NOT NULL,
	[prices] [int] NULL,
	[stt] [bit] NOT NULL,
	[discountid] [nvarchar](10) NULL,
	[idplane] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_DETAILS_CUSTOMER1] FOREIGN KEY([idcard])
REFERENCES [dbo].[CUSTOMER] ([idcard])
GO
ALTER TABLE [dbo].[DETAILS] CHECK CONSTRAINT [FK_DETAILS_CUSTOMER1]
GO
ALTER TABLE [dbo].[DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_DETAILS_TICKET] FOREIGN KEY([idticket])
REFERENCES [dbo].[TICKET] ([idticket])
GO
ALTER TABLE [dbo].[DETAILS] CHECK CONSTRAINT [FK_DETAILS_TICKET]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [FK_DETAILS_TICKET1] FOREIGN KEY([idplane])
REFERENCES [dbo].[PLANE] ([idplane])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [FK_DETAILS_TICKET1]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [FK_TICKET_DISCOUNT] FOREIGN KEY([discountid])
REFERENCES [dbo].[DISCOUNT] ([discountid])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [FK_TICKET_DISCOUNT]
GO
