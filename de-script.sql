USE [Database2]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PassportID] [int] NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Address] [nvarchar](1000) NOT NULL,
	[Email] [nvarchar](320) NOT NULL,
	[Password] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Email] [nvarchar](320) NOT NULL,
	[Password] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[LoginHistoryID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[DateAttempted] [datetime] NOT NULL,
	[LoginStatusID] [int] NOT NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[LoginHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginStatus]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginStatus](
	[LoginStatusID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoginStatus] PRIMARY KEY CLUSTERED 
(
	[LoginStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[OrderCode] [nvarchar](40) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[TimeCreated] [time](7) NOT NULL,
	[ClientID] [int] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[DateClosed] [date] NULL,
	[DurationTime] [smallint] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderService]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderService](
	[OrderServiceID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_OrderService] PRIMARY KEY CLUSTERED 
(
	[OrderServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passport]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passport](
	[PassportID] [int] NOT NULL,
	[Series] [char](4) NOT NULL,
	[Number] [char](6) NOT NULL,
 CONSTRAINT [PK_Passport] PRIMARY KEY CLUSTERED 
(
	[PassportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 23.05.2024 16:48:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[PricePerHour] [money] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462526, N'Фролов', N'Андрей', N'Иванович', 1, CAST(N'2001-07-14' AS Date), N'344288, г. Екатеринбург, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462527, N'Николаев', N'Даниил', N'Всеволодович', 2, CAST(N'2001-02-10' AS Date), N'614164, г. Екатеринбург, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462528, N'Снегирев', N'Макар', N'Иванович', 3, CAST(N'1998-05-21' AS Date), N'394242, г. Екатеринбург, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462529, N'Иванов', N'Иван', N'Ильич', 4, CAST(N'1998-10-01' AS Date), N'660540, г. Екатеринбург, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462530, N'Филиппова', N'Анна', N'Глебовна', 5, CAST(N'1976-05-31' AS Date), N'125837, г. Екатеринбург, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462531, N'Иванов', N'Михаил', N'Владимирович', 6, CAST(N'1985-11-04' AS Date), N'125703, г. Екатеринбург, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462532, N'Власов', N'Дмитрий', N'Александрович', 7, CAST(N'1998-08-17' AS Date), N'625283, г. Екатеринбург, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462533, N'Серова', N'Екатерина', N'Львовна', 8, CAST(N'1984-10-24' AS Date), N'614611, г. Екатеринбург, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462534, N'Борисова', N'Ирина', N'Ивановна', 9, CAST(N'1976-10-14' AS Date), N'454311, г. Екатеринбург, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462535, N'Зайцев', N'Никита', N'Артёмович', 10, CAST(N'1999-10-14' AS Date), N'660007, г. Екатеринбург, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462536, N'Медведев', N'Святослав', N'Евгеньевич', 11, CAST(N'1985-07-13' AS Date), N'603036, г. Екатеринбург, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462537, N'Коротков', N'Кирилл', N'Алексеевич', 12, CAST(N'1976-05-26' AS Date), N'450983, г. Екатеринбург, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462538, N'Калашникова', N'Арина', N'Максимовна', 13, CAST(N'1999-08-13' AS Date), N'394782, г. Екатеринбург, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462539, N'Минина', N'Таисия', N'Кирилловна', 14, CAST(N'1985-10-13' AS Date), N'603002, г. Екатеринбург, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462540, N'Наумов', N'Серафим', N'Романович', 15, CAST(N'1999-04-15' AS Date), N'450558, г. Екатеринбург, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462541, N'Воробьева', N'Василиса', N'Евгеньевна', 16, CAST(N'1999-01-13' AS Date), N'394060, г. Екатеринбург, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462542, N'Калинин', N'Александр', N'Андреевич', 17, CAST(N'1999-01-07' AS Date), N'410661, г. Екатеринбург, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462543, N'Кузнецова', N'Милана', N'Владиславовна', 18, CAST(N'1999-01-24' AS Date), N'625590, г. Екатеринбург, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462544, N'Фирсов', N'Егор', N'Романович', 19, CAST(N'1993-09-02' AS Date), N'625683, г. Екатеринбург, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462545, N'Зимина', N'Агния', N'Александровна', 20, CAST(N'1998-09-03' AS Date), N'400562, г. Екатеринбург, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462546, N'Титов', N'Андрей', N'Глебович', 21, CAST(N'1985-10-23' AS Date), N'614510, г. Екатеринбург, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462547, N'Орлов', N'Николай', N'Егорович', 22, CAST(N'1985-07-27' AS Date), N'410542, г. Екатеринбург, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462548, N'Кузнецова', N'Аиша', N'Михайловна', 23, CAST(N'1998-10-04' AS Date), N'620839, г. Екатеринбург, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462549, N'Куликов', N'Никита', N'Георгиевич', 24, CAST(N'1999-04-23' AS Date), N'443890, г. Екатеринбург, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462550, N'Карпова', N'София', N'Егоровна', 25, CAST(N'1993-10-01' AS Date), N'603379, г. Екатеринбург, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462551, N'Смирнова', N'Дарья', N'Макаровна', 26, CAST(N'1976-03-22' AS Date), N'603721, г. Екатеринбург, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462552, N'Абрамова', N'Александра', N'Мироновна', 27, CAST(N'1999-03-26' AS Date), N'410172, г. Екатеринбург, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462553, N'Наумов', N'Руслан', N'Михайлович', 28, CAST(N'1999-10-11' AS Date), N'420151, г. Екатеринбург, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462554, N'Бочаров', N'Никита', N'Матвеевич', 29, CAST(N'1997-06-29' AS Date), N'125061, г. Екатеринбург, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462555, N'Соловьев', N'Давид', N'Ильич', 30, CAST(N'1984-03-06' AS Date), N'630370, г. Екатеринбург, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462556, N'Васильева', N'Валерия', N'Дмитриевна', 31, CAST(N'1999-09-30' AS Date), N'614753, г. Екатеринбург, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462557, N'Макарова', N'Василиса', N'Андреевна', 32, CAST(N'1999-04-08' AS Date), N'426030, г. Екатеринбург, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462558, N'Алексеев', N'Матвей', N'Викторович', 33, CAST(N'1998-08-02' AS Date), N'450375, г. Екатеринбург, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462559, N'Никитина', N'Полина', N'Александровна', 34, CAST(N'1976-09-19' AS Date), N'625560, г. Екатеринбург, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462560, N'Окулова', N'Олеся', N'Алексеевна', 35, CAST(N'1999-04-03' AS Date), N'630201, г. Екатеринбург, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462561, N'Захарова', N'Полина', N'Яновна', 36, CAST(N'1976-04-21' AS Date), N'190949, г. Екатеринбург, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462562, N'Зайцев', N'Владимир', N'Давидович', 37, CAST(N'1998-01-26' AS Date), N'350501, г. Екатеринбург, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462563, N'Иванов', N'Виталий', N'Даниилович', 38, CAST(N'1976-08-11' AS Date), N'450048, г. Екатеринбург, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462564, N'Захаров', N'Матвей', N'Романович', 39, CAST(N'1993-07-12' AS Date), N'644921, г. Екатеринбург, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462565, N'Иванов', N'Степан', N'Степанович', 40, CAST(N'1998-09-19' AS Date), N'614228, г. Екатеринбург, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462566, N'Ткачева', N'Милана', N'Тимуровна', 41, CAST(N'1998-05-24' AS Date), N'350940, г. Екатеринбург, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462567, N'Семенов', N'Даниил', N'Иванович', 42, CAST(N'1976-01-04' AS Date), N'344990, г. Екатеринбург, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462568, N'Виноградов', N'Вячеслав', N'Дмитриевич', 43, CAST(N'1976-07-12' AS Date), N'410248, г. Екатеринбург, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462569, N'Соболева', N'Николь', N'Фёдоровна', 44, CAST(N'1976-05-02' AS Date), N'400839, г. Екатеринбург, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462570, N'Тихонова', N'Анна', N'Львовна', 45, CAST(N'1985-03-23' AS Date), N'450539, г. Екатеринбург, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462571, N'Кузнецова', N'Ульяна', N'Савельевна', 46, CAST(N'1999-06-03' AS Date), N'614591, г. Екатеринбург, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462572, N'Смирнова', N'Анна', N'Германовна', 47, CAST(N'1997-07-18' AS Date), N'400260, г. Екатеринбург, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462573, N'Черепанова', N'Анна', N'Давидовна', 48, CAST(N'1985-11-06' AS Date), N'660924, г. Екатеринбург, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462574, N'Григорьев', N'Максим', N'Кириллович', 49, CAST(N'1999-05-26' AS Date), N'644133, г. Екатеринбург, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462575, N'Голубев', N'Даниэль', N'Александрович', 50, CAST(N'1999-06-14' AS Date), N'450698, г. Екатеринбург, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462576, N'Миронов', N'Юрий', N'Денисович', 51, CAST(N'1985-01-26' AS Date), N'620653, г. Екатеринбург, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462577, N'Терехов', N'Михаил', N'Андреевич', 52, CAST(N'1976-07-06' AS Date), N'644321, г. Екатеринбург, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462578, N'Орлова', N'Алиса', N'Михайловна', 53, CAST(N'1997-02-24' AS Date), N'603653, г. Екатеринбург, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462579, N'Кулаков', N'Константин', N'Даниилович', 54, CAST(N'1993-06-20' AS Date), N'410181, г. Екатеринбург, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462580, N'Кудрявцев', N'Максим', N'Романович', 55, CAST(N'1998-05-10' AS Date), N'394207, г. Екатеринбург, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462581, N'Соболева', N'Кира', N'Фёдоровна', 56, CAST(N'1998-03-14' AS Date), N'420633, г. Екатеринбург, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462582, N'Коновалов', N'Арсений', N'Максимович', 57, CAST(N'1985-02-18' AS Date), N'445720, г. Екатеринбург, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462583, N'Гусев', N'Михаил', N'Дмитриевич', 58, CAST(N'1999-11-23' AS Date), N'400646, г. Екатеринбург, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462584, N'Суханова', N'Варвара', N'Матвеевна', 59, CAST(N'1993-09-13' AS Date), N'644410, г. Екатеринбург, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462585, N'Орлова', N'Ясмина', N'Васильевна', 60, CAST(N'1984-06-24' AS Date), N'400750, г. Екатеринбург, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462586, N'Васильева', N'Ксения', N'Константиновна', 61, CAST(N'1999-08-01' AS Date), N'660590, г. Екатеринбург, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462587, N'Борисова', N'Тамара', N'Данииловна', 62, CAST(N'1993-05-29' AS Date), N'426083, г. Екатеринбург, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462588, N'Дмитриев', N'Мирон', N'Ильич', 63, CAST(N'1985-04-13' AS Date), N'410569, г. Екатеринбург, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462589, N'Лебедева', N'Анна', N'Александровна', 64, CAST(N'1985-03-30' AS Date), N'443375, г. Екатеринбург, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462590, N'Пономарев', N'Артём', N'Маркович', 65, CAST(N'1984-06-02' AS Date), N'614316, г. Екатеринбург, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462591, N'Борисова', N'Елена', N'Михайловна', 66, CAST(N'1976-05-23' AS Date), N'445685, г. Екатеринбург, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462592, N'Моисеев', N'Камиль', N'Максимович', 67, CAST(N'1999-06-17' AS Date), N'614505, г. Екатеринбург, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462593, N'Герасимова', N'Дарья', N'Константиновна', 68, CAST(N'1984-10-13' AS Date), N'426629, г. Екатеринбург, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462594, N'Михайлова', N'Мария', N'Марковна', 69, CAST(N'1976-12-02' AS Date), N'603743, г. Екатеринбург, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[Client] ([ClientID], [LastName], [FirstName], [MiddleName], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462595, N'Коршунов', N'Кирилл', N'Максимович', 70, CAST(N'1985-05-22' AS Date), N'450750, г. Екатеринбург, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
GO
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (101, 1, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (102, 1, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (103, 2, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (104, 3, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (105, 3, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (106, 3, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (107, 1, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (108, 1, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (109, 1, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@namecomp.ru', N'AtnDjr')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [LastName], [FirstName], [MiddleName], [Email], [Password]) VALUES (110, 1, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@namecomp.ru', N'JlFRCZ')
GO
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (1, 101, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (2, 102, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (3, 103, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (4, 104, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (5, 105, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (6, 106, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (7, 107, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (8, 108, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (9, 109, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [DateAttempted], [LoginStatusID]) VALUES (10, 110, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
GO
INSERT [dbo].[LoginStatus] ([LoginStatusID], [Name]) VALUES (1, N'Успешно')
INSERT [dbo].[LoginStatus] ([LoginStatusID], [Name]) VALUES (2, N'Неуспешно')
GO
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (1, N'45462526/12.03.2022', CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 45462526, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (2, N'45462527/13.03.2022', CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (3, N'45462528/14.03.2022', CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (4, N'45462529/15.03.2022', CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (5, N'45462530/16.03.2022', CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, 3, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (6, N'45462531/17.03.2022', CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (7, N'45462532/18.03.2022', CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (8, N'45462533/19.03.2022', CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (9, N'45462534/20.03.2022', CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (10, N'45462535/21.03.2022', CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (11, N'45462536/22.03.2022', CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, 3, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (12, N'45462537/23.03.2022', CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (13, N'45462538/24.03.2022', CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (14, N'45462539/25.03.2022', CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, 2, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (15, N'45462540/26.03.2022', CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, 3, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (16, N'45462541/27.03.2022', CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (17, N'45462542/28.03.2022', CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (18, N'45462543/29.03.2022', CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (19, N'45462544/30.03.2022', CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (20, N'45462545/31.03.2022', CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (21, N'45462546/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 45462546, 3, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (22, N'45462547/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462547, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (23, N'45462548/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462548, 1, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (24, N'45462549/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (25, N'45462550/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 45462550, 2, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (26, N'45462551/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 45462551, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (27, N'45462552/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 45462552, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (28, N'45462553/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 45462553, 3, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (29, N'45462554/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 45462554, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (30, N'45462555/10.04.2022', CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 45462555, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (31, N'45462556/11.04.2022', CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 45462556, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (32, N'45462557/12.04.2022', CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 45462557, 1, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (33, N'45462558/13.04.2022', CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (34, N'45462559/14.04.2022', CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (35, N'45462560/15.04.2022', CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (36, N'45462561/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462561, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (37, N'45462562/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462562, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (38, N'45462563/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, 3, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (39, N'45462564/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 45462564, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (40, N'45462565/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 45462565, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (41, N'45462566/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 45462566, 3, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (42, N'45462567/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 45462567, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (43, N'45462568/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 45462568, 2, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (44, N'45462569/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 45462569, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (45, N'45462570/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45462570, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (46, N'45462571/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 45462571, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (47, N'45462572/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, 3, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (48, N'45462573/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 45462573, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (49, N'45462574/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 45462574, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [TimeCreated], [ClientID], [OrderStatusID], [DateClosed], [DurationTime]) VALUES (50, N'45462575/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 45462575, 1, NULL, 360)
GO
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (1, 34, 1)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (2, 98, 2)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (3, 92, 3)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (4, 92, 4)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (5, 98, 5)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (6, 34, 6)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (7, 98, 7)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (8, 92, 8)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (9, 92, 9)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (10, 98, 10)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (11, 34, 11)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (12, 98, 12)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (13, 92, 13)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (14, 92, 14)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (15, 98, 15)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (16, 34, 16)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (17, 98, 17)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (18, 92, 18)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (19, 92, 19)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (20, 98, 20)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (21, 34, 21)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (22, 98, 22)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (23, 92, 23)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (24, 92, 24)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (25, 98, 25)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (26, 34, 26)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (27, 98, 27)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (28, 92, 28)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (29, 92, 29)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (30, 98, 30)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (31, 34, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (32, 98, 32)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (33, 92, 33)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (34, 92, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (35, 98, 35)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (36, 34, 36)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (37, 98, 37)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (38, 92, 38)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (39, 92, 39)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (40, 98, 40)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (41, 34, 41)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (42, 98, 42)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (43, 92, 43)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (44, 92, 44)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (45, 98, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (46, 34, 46)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (47, 98, 47)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (48, 92, 48)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (49, 92, 49)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (50, 98, 50)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (51, 31, 1)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (52, 45, 2)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (53, 45, 3)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (54, 45, 4)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (55, 45, 5)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (56, 31, 6)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (57, 45, 7)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (58, 45, 8)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (59, 45, 9)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (60, 45, 10)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (61, 31, 11)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (62, 45, 12)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (63, 45, 13)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (64, 45, 14)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (65, 45, 15)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (66, 31, 16)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (67, 45, 17)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (68, 45, 18)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (69, 45, 19)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (70, 45, 20)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (71, 31, 21)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (72, 45, 22)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (73, 45, 23)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (74, 45, 24)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (75, 45, 25)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (76, 31, 26)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (77, 45, 27)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (78, 45, 28)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (79, 45, 29)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (80, 45, 30)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (81, 31, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (82, 45, 32)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (83, 45, 33)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (84, 45, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (85, 45, 35)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (86, 31, 36)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (87, 45, 37)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (88, 45, 38)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (89, 45, 39)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (90, 45, 40)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (91, 31, 41)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (92, 45, 42)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (93, 45, 43)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (94, 45, 44)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (95, 45, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (96, 31, 46)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (97, 45, 47)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (98, 45, 48)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (99, 45, 49)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (100, 45, 50)
GO
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (101, 353, 1)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (102, 89, 2)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (103, 57, 3)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (104, 57, 4)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (105, 89, 5)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (106, 353, 6)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (107, 89, 7)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (108, 57, 8)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (109, 57, 9)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (110, 89, 10)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (111, 353, 11)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (112, 89, 12)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (113, 57, 13)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (114, 57, 14)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (115, 89, 15)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (116, 353, 16)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (117, 89, 17)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (118, 57, 18)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (119, 57, 19)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (120, 89, 20)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (121, 353, 21)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (122, 89, 22)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (123, 57, 23)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (124, 57, 24)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (125, 89, 25)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (126, 353, 26)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (127, 89, 27)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (128, 57, 28)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (129, 57, 29)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (130, 89, 30)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (131, 353, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (132, 89, 32)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (133, 57, 33)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (134, 57, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (135, 89, 35)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (136, 353, 36)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (137, 89, 37)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (138, 57, 38)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (139, 57, 39)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (140, 89, 40)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (141, 353, 41)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (142, 89, 42)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (143, 57, 43)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (144, 57, 44)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (145, 89, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (146, 353, 46)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (147, 89, 47)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (148, 57, 48)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (149, 57, 49)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (150, 89, 50)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (151, 336, 1)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (152, 99, 2)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (153, 88, 3)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (154, 88, 4)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (155, 353, 5)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (157, 99, 7)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (158, 89, 8)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (159, 88, 9)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (160, 353, 10)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (162, 99, 12)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (164, 88, 14)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (165, 353, 15)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (167, 99, 17)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (169, 88, 19)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (170, 353, 20)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (172, 99, 22)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (173, 92, 23)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (174, 88, 24)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (175, 353, 25)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (177, 99, 27)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (179, 88, 29)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (180, 353, 30)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (182, 99, 32)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (184, 88, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (185, 353, 35)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (187, 99, 37)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (189, 88, 39)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (190, 353, 40)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (192, 99, 42)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (194, 88, 44)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (195, 353, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (197, 99, 47)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (199, 88, 49)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (200, 353, 50)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (201, 123, 2)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (202, 44, 4)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (203, 336, 5)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (205, 45, 9)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (206, 336, 10)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (209, 336, 15)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (212, 336, 20)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (215, 336, 25)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (218, 336, 30)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (221, 336, 35)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (224, 336, 40)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (227, 336, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (230, 336, 50)
INSERT [dbo].[OrderService] ([OrderServiceID], [ServiceID], [OrderID]) VALUES (231, 34, 5)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (1, N'Новая')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (2, N'В прокате')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (3, N'Закрыта')
GO
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (1, N'1180', N'176596')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (2, N'2280', N'223523')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (3, N'4560', N'354155')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (4, N'9120', N'554296')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (5, N'2367', N'558134')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (6, N'7101', N'669343')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (7, N'3455', N'719630')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (8, N'2377', N'871623')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (9, N'8755', N'921148')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (10, N'4355', N'104594')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (11, N'2791', N'114390')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (12, N'5582', N'126286')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (13, N'2978', N'133653')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (14, N'7512', N'141956')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (15, N'5046', N'158433')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (16, N'2460', N'169505')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (17, N'3412', N'174593')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (18, N'4950', N'183034')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (19, N'5829', N'219464')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (20, N'6443', N'208059')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (21, N'7079', N'213265')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (22, N'8207', N'522702')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (23, N'9307', N'232158')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (24, N'1357', N'242839')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (25, N'1167', N'256636')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (26, N'1768', N'266986')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (27, N'1710', N'427875')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (28, N'1806', N'289145')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (29, N'1587', N'291249')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (30, N'1647', N'306372')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (31, N'1742', N'316556')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (32, N'1474', N'326347')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (33, N'1452', N'339539')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (34, N'2077', N'443480')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (35, N'2147', N'357518')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (36, N'2687', N'363884')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (37, N'2376', N'443711')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (38, N'2568', N'386237')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (39, N'2556', N'439376')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (40, N'2737', N'407501')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (41, N'2581', N'441645')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (42, N'2675', N'427933')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (43, N'2967', N'434531')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (44, N'3070', N'449655')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (45, N'3108', N'451174')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (46, N'3250', N'464705')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (47, N'3392', N'471644')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (48, N'3497', N'487819')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (49, N'3560', N'491260')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (50, N'3620', N'506034')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (51, N'3774', N'511438')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (52, N'3862', N'521377')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (53, N'3084', N'535966')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (54, N'4021', N'541528')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (55, N'4109', N'554053')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (56, N'4537', N'564868')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (57, N'4914', N'572471')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (58, N'4445', N'581302')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (59, N'4743', N'598180')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (60, N'4741', N'601821')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (61, N'4783', N'612567')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (62, N'4658', N'621200')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (63, N'4908', N'634613')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (64, N'5092', N'642468')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (65, N'5155', N'465274')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (66, N'5086', N'666893')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (67, N'5333', N'675375')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (68, N'5493', N'684572')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (69, N'5150', N'696226')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (70, N'1308', N'703305')
GO
INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (1, N'Продавец')
INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (2, N'Администратор')
INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (3, N'Старший смены')
GO
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (31, N'Прокат опорного оборудования для катка', N'JUR8R', 500.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (34, N'Обучение катанию на коньках', N'JKFBJ09', 1000.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (44, N'Прокат салазок', N'DHBGFY563', 450.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (45, N'Прокат набора защитного оборудования', N'JFH7382', 800.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (57, N'Прокат ледянки', N'JHVSJF6', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (88, N'Катание на  катке', N'DJHGBS982', 400.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (89, N'Прокат детских коньков', N'OIJNB12', 800.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (92, N'Прокат санок', N'HJBUJE21J', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (98, N'Прокат шлема', N'63748HF', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (99, N'Прокат вартушки', N'BSFBHV63', 100.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (123, N'Катание на горках', N'638VVNQ3', 500.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (336, N'Прокат коньков', N'8HFJHG443', 1200.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [PricePerHour]) VALUES (353, N'Заточка коньков', N'87FDJKHJ', 500.0000)
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Passport] FOREIGN KEY([PassportID])
REFERENCES [dbo].[Passport] ([PassportID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Passport]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_Employee]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_LoginStatus] FOREIGN KEY([LoginStatusID])
REFERENCES [dbo].[LoginStatus] ([LoginStatusID])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_LoginStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Order]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Service]
GO
