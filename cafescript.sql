USE [master]
GO
/****** Object:  Database [cafe_db]    Script Date: 13.06.2024 19:36:29 ******/
CREATE DATABASE [cafe_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cafe_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\cafe_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cafe_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\cafe_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cafe_db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cafe_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cafe_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cafe_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cafe_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cafe_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cafe_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [cafe_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cafe_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cafe_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cafe_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cafe_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cafe_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cafe_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cafe_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cafe_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cafe_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cafe_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cafe_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cafe_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cafe_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cafe_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cafe_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cafe_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cafe_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cafe_db] SET  MULTI_USER 
GO
ALTER DATABASE [cafe_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cafe_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cafe_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cafe_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cafe_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cafe_db] SET QUERY_STORE = OFF
GO
USE [cafe_db]
GO
/****** Object:  Table [dbo].[DishTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DishTable](
	[IDDish] [int] NOT NULL,
	[NameDish] [nvarchar](max) NULL,
	[CountDish] [int] NULL,
 CONSTRAINT [PK_DishTable] PRIMARY KEY CLUSTERED 
(
	[IDDish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrinkTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrinkTable](
	[IDDrink] [int] NOT NULL,
	[NameDrink] [nvarchar](max) NULL,
	[CountDrink] [int] NULL,
 CONSTRAINT [PK_DrinkTable] PRIMARY KEY CLUSTERED 
(
	[IDDrink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenderTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenderTable](
	[GenderName] [nvarchar](50) NULL,
	[IDGender] [int] NOT NULL,
 CONSTRAINT [PK_GenderTable] PRIMARY KEY CLUSTERED 
(
	[IDGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionTable](
	[NamePosition] [nvarchar](50) NULL,
	[IDPosition] [int] NOT NULL,
 CONSTRAINT [PK_PositionTable] PRIMARY KEY CLUSTERED 
(
	[IDPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmenaTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmenaTable](
	[IDSmena] [int] IDENTITY(1,1) NOT NULL,
	[Worker] [int] NULL,
	[DateExit] [date] NULL,
	[Time] [time](7) NULL,
 CONSTRAINT [PK_SmenaTable] PRIMARY KEY CLUSTERED 
(
	[IDSmena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusCookTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusCookTable](
	[StatusCookName] [nvarchar](50) NULL,
	[IDStatusCook] [int] NOT NULL,
 CONSTRAINT [PK_StatusCookTable] PRIMARY KEY CLUSTERED 
(
	[IDStatusCook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOficTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOficTable](
	[StatusOficName] [nvarchar](50) NULL,
	[IDStatusOfic] [int] NOT NULL,
 CONSTRAINT [PK_StatusOficTable] PRIMARY KEY CLUSTERED 
(
	[IDStatusOfic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusWorkerTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusWorkerTable](
	[StatusWorkName] [nvarchar](50) NULL,
	[IDStatusWork] [int] NOT NULL,
 CONSTRAINT [PK_StatusWorkerTable] PRIMARY KEY CLUSTERED 
(
	[IDStatusWork] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTable](
	[IDWorker] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[DateBirthday] [date] NULL,
	[Gender] [int] NULL,
	[WorkPosition] [int] NULL,
	[Status] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_WorkTable] PRIMARY KEY CLUSTERED 
(
	[IDWorker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZakazTable]    Script Date: 13.06.2024 19:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZakazTable](
	[IDZakaz] [int] IDENTITY(1,1) NOT NULL,
	[StatusOfic] [int] NULL,
	[StatusCook] [int] NULL,
	[Oficiant] [int] NULL,
	[NTable] [int] NULL,
	[NDish] [int] NULL,
	[NDrink] [int] NULL,
	[DateZakaz] [date] NULL,
 CONSTRAINT [PK_ZakazTable] PRIMARY KEY CLUSTERED 
(
	[IDZakaz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (1, N'Барабулька жареная', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (2, N'Барабулька, маринованная с фенхелем', 350)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (3, N'Баранья голяшка, тушеная с травами', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (4, N'Баранья корейка жареная', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (5, N'Брауни с абрикосовым мармеладом в шоколадной глазури', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (6, N'Бризоль из грудки индейки', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (7, N'Домашний кетчуп с подкопчеными яблоками', 100)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (8, N'Камбала, припущенная с овощами', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (9, N'Капуста брюссельская', 200)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (10, N'Карпаччо из говядины', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (11, N'Карпаччо из лосося', 500)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (12, N'Карпаччо из сибаса', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (13, N'Картофель, фаршированный беконом и сыром', 250)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (14, N'Крем-суп из зеленого горошка', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (15, N'Крем-суп из картофеля с козьим сыром', 350)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (16, N'Крем-суп из тыквы', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (17, N'Куриная грудка в панировке из миндаля', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (18, N'Кус-кус с помидорами и розмарином', 250)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (19, N'Лосось филе, запеченный в сливочном соусе', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (20, N'Масло сливочное с лимоном', 100)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (21, N'Молодой петух в красном вине', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (22, N'Мясной рулет с омлетом и каперсами', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (23, N'Овощная капоната с баклажанами и сыром', 350)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (24, N'Палтус филе на пару', 350)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (25, N'Печенье с миндальной меренгой', 200)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (26, N'Рис с сыром и зеленью', 200)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (27, N'Рулетики из свинины', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (28, N'Салат в стиле Рататуй', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (29, N'Салат Греческий', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (30, N'Свекла, фаршированная овощами, с красным вином', 250)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (31, N'Сибас, припущенный в белом вине', 400)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (32, N'Тарт (с кремом Каталана или горьким шоколадом – на выбор)', 250)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (33, N'Филе миньон с грибами', 450)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (34, N'Цезарь (с курицей, лососем, креветками – на выбор)', 300)
INSERT [dbo].[DishTable] ([IDDish], [NameDish], [CountDish]) VALUES (35, N'Штрудель с яблоками и изюмом', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1001, N'Эспрессо', 100)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1002, N'Двойной эспрессо', 150)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1003, N'Доппио', 150)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1004, N'Ристретто', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1005, N'Капучино', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1006, N'Американо', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1007, N'Латте', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1008, N'Латте Маккиато', 270)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1009, N'Чай черный листовой', 200)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1010, N'Чай зеленый', 200)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1011, N'Чай зеленый с мятой', 200)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1012, N'Чай зеленый с жасмином', 200)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1013, N'Сок морковный свежевыжатый', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1014, N'Сок яблочный свежевыжатый', 250)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1015, N'Сок апельсиновый свежевыжатый', 300)
INSERT [dbo].[DrinkTable] ([IDDrink], [NameDrink], [CountDrink]) VALUES (1016, N'Сок грейпфрутовый свежевыжатый', 300)
INSERT [dbo].[GenderTable] ([GenderName], [IDGender]) VALUES (N'женский', 1)
INSERT [dbo].[GenderTable] ([GenderName], [IDGender]) VALUES (N'мужской', 2)
INSERT [dbo].[PositionTable] ([NamePosition], [IDPosition]) VALUES (N'администратор', 1)
INSERT [dbo].[PositionTable] ([NamePosition], [IDPosition]) VALUES (N'официант', 2)
INSERT [dbo].[PositionTable] ([NamePosition], [IDPosition]) VALUES (N'повар', 3)
SET IDENTITY_INSERT [dbo].[SmenaTable] ON 

INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (1, 1, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (2, 3, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (3, 4, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (4, 5, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (5, 6, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (6, 7, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (7, 8, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (8, 10, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (9, 11, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (10, 13, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (11, 15, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (12, 17, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (13, 18, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (14, 19, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (15, 20, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (16, 21, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (17, 1, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (18, 3, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (19, 4, CAST(N'2024-02-02' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (20, 5, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (21, 6, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (22, 7, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (23, 8, CAST(N'2024-02-02' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (24, 10, CAST(N'2024-02-02' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (25, 11, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (26, 13, CAST(N'2024-02-02' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (27, 15, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (28, 18, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (29, 19, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (30, 20, CAST(N'2024-02-02' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (31, 21, CAST(N'2024-02-02' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (32, 2, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (33, 22, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (34, 23, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (35, 24, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (36, 25, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (37, 26, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (38, 31, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (39, 32, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (40, 33, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (41, 34, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (42, 35, CAST(N'2024-02-03' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (43, 36, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (44, 43, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (45, 44, CAST(N'2024-02-03' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (46, 1, NULL, NULL)
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (47, 5, CAST(N'2024-02-01' AS Date), NULL)
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (48, 4, CAST(N'2024-02-01' AS Date), CAST(N'08:00:00' AS Time))
INSERT [dbo].[SmenaTable] ([IDSmena], [Worker], [DateExit], [Time]) VALUES (49, 4, CAST(N'2024-02-01' AS Date), CAST(N'10:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[SmenaTable] OFF
INSERT [dbo].[StatusCookTable] ([StatusCookName], [IDStatusCook]) VALUES (N'готовится', 1)
INSERT [dbo].[StatusCookTable] ([StatusCookName], [IDStatusCook]) VALUES (N'готов ', 2)
INSERT [dbo].[StatusOficTable] ([StatusOficName], [IDStatusOfic]) VALUES (N'принят', 1)
INSERT [dbo].[StatusOficTable] ([StatusOficName], [IDStatusOfic]) VALUES (N'оплачен', 2)
INSERT [dbo].[StatusWorkerTable] ([StatusWorkName], [IDStatusWork]) VALUES (N'работает', 1)
INSERT [dbo].[StatusWorkerTable] ([StatusWorkName], [IDStatusWork]) VALUES (N'уволен', 2)
SET IDENTITY_INSERT [dbo].[WorkTable] ON 

INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (1, N'Глухова', N'Аглая', N'Егоровна', CAST(N'1983-03-01' AS Date), 1, 1, 1, N'78430205733', N'scott-rosario43@mail.com', N'6gHce7', N'6NYAm3')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (2, N'Семенов', N'Матвей', N'Владимирович', CAST(N'1980-10-08' AS Date), 2, 1, 1, N'78430563243', N'vickers-ty82@outlook.com', N'nvrn7K', N'1o1dHz')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (3, N'Алексеев', N'Артём', N'Даниилович', CAST(N'1997-07-01' AS Date), 2, 3, 1, N'78435199478', N'donavon_gentry9@outlook.com', N'Iy6ihB', N'DTvCv6')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (4, N'Захарова', N'Арина', N'Родионовна', CAST(N'2004-05-15' AS Date), 1, 2, 1, N'78430902303', N'manuel-mullen90@gmail.com', N'50Q1Ms', N'Pv7gkX')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (5, N'Громов', N'Илья', N'Георгиевич', CAST(N'1991-11-05' AS Date), 2, 3, 1, N'78433491728', N'amaya-triston58@yahoo.com', N'4Sw0pD', N'91izDF')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (6, N'Морозов', N'Михаил', N'Ильич', CAST(N'1988-08-25' AS Date), 2, 3, 1, N'78437529953', N'morton-marquez61@mail.com', N'Bd622Z', N'KT2HEr')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (7, N'Фирсова', N'Лидия', N'Данииловна', CAST(N'2001-11-23' AS Date), 1, 3, 1, N'78436241020', N'nikhil_sargent6@mail.com', N'RM1xDv', N'N2mG0q')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (8, N'Воробьева', N'Алиса', N'Павловна', CAST(N'1984-02-02' AS Date), 1, 2, 1, N'78431135279', N'barker_bailey94@hotmail.com', N'amB66B', N'P9wEXX')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (9, N'Никитина', N'Василиса', N'Родионовна', CAST(N'1977-04-21' AS Date), 1, 2, 2, N'78432860058', N'pearlie-gill37@gmail.com', N'I76XrS', N'5UOXsl')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (10, N'Волков', N'Артемий', N'Иванович', CAST(N'1989-06-22' AS Date), 2, 2, 1, N'78431170605', N'alicia-field80@yahoo.com', N'v0iTZs', N'9O79j6')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (11, N'Михайлова', N'Виктория', N'Артёмовна', CAST(N'1990-07-27' AS Date), 1, 3, 1, N'78433944155', N'delarosa-delia62@yahoo.com', N'pM1len', N'R4Eoan')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (12, N'Широкова', N'Ангелина', N'Данииловна', CAST(N'1976-12-05' AS Date), 1, 3, 2, N'78436989675', N'kinley_metcalf16@aol.com', N'1aRCdQ', N'4LmWcr')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (13, N'Рыбакова', N'Амалия', N'Тимофеевна', CAST(N'1985-07-25' AS Date), 1, 2, 1, N'78436296884', N'brynlee-merrill42@mail.com', N'a2RtaD', N'85LN2p')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (14, N'Григорьева', N'Александра', N'Львовна', CAST(N'2004-05-18' AS Date), 1, 2, 2, N'78439296349', N'waylon_minor44@aol.com', N'5xjPkx', N'SfyeA8')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (15, N'Давыдова', N'Злата', N'Андреевна', CAST(N'1994-02-12' AS Date), 1, 3, 1, N'78433405958', N'bragg-damian82@hotmail.com', N'8tXxCh', N'FqM1sJ')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (16, N'Блинов', N'Данила', N'Миронович', CAST(N'2003-04-01' AS Date), 1, 3, 1, N'78435761410', N'parker-unknown77@mail.com', N'lZY8FJ', N'7QNfDF')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (17, N'Соколова', N'Дарья', N'Святославовна', CAST(N'1999-05-14' AS Date), 1, 2, 1, N'78433072821', N'cabrera_sydnee20@aol.com', N'lwS3om', N'OY4lyd')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (18, N'Лаптев', N'Фёдор', N'Романович', CAST(N'2004-07-19' AS Date), 2, 3, 1, N'78435138534', N'short-liana84@gmail.com', N'Jml2Zm', N'6zCdZV')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (19, N'Сафонов', N'Леон', N'Владиславович', CAST(N'2004-03-12' AS Date), 2, 3, 1, N'78437557144', N'corinne-brandon53@yahoo.com', N'ikb4Qk', N'6kRblt')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (20, N'Морозов', N'Максим', N'Ярославович', CAST(N'1991-01-05' AS Date), 2, 2, 1, N'78431086297', N'romo-vivienne44@yahoo.com', N'4lwhJ6', N'HUNpg4')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (21, N'Рогова', N'Аврора', N'Максимовна', CAST(N'1984-10-15' AS Date), 1, 3, 1, N'78439487704', N'etta_cain27@aol.com', N'zmz3TM', N'EMUq3d')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (22, N'Антонов', N'Мирон', N'Артёмович', CAST(N'1990-12-30' AS Date), 2, 2, 1, N'78431816166', N'vu_keith79@mail.com', N'De95r5', N'Ua5J95')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (23, N'Жилина', N'Майя', N'Артёмовна', CAST(N'1983-07-16' AS Date), 1, 2, 1, N'78432163500', N'chanda_grimes22@gmail.com', N'qlKb1U', N'6kXLby')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (24, N'Рудакова', N'Серафима', N'Михайловна', CAST(N'1976-02-22' AS Date), 1, 3, 1, N'78431833700', N'marci-dunn79@yahoo.com', N'fKp5Xv', N'XN6uA7')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (25, N'Филатова', N'Ульяна', N'Александровна', CAST(N'1997-12-30' AS Date), 1, 2, 1, N'78435842995', N'raines-valentina4@gmail.com', N'7EKJb4', N'K6Y64a')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (26, N'Волкова', N'Анастасия', N'Ивановна', CAST(N'1994-11-29' AS Date), 1, 3, 1, N'78437778337', N'sampson_marnie86@gmail.com', N'uh5Aqp', N'5ne6Ir')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (27, N'Максимов', N'Артур', N'Васильевич', CAST(N'1984-09-12' AS Date), 2, 3, 2, N'78435390397', N'hager_elisha22@mail.com', N'1munZD', N'utcN0q')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (28, N'Артемова', N'Анастасия', N'Максимовна', CAST(N'1992-12-30' AS Date), 1, 3, 1, N'78437095092', N'brian-davies70@gmail.com', N'Ax5UGm', N'uqu6RM')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (29, N'Лазарев', N'Тимур', N'Тимофеевич', CAST(N'1979-02-26' AS Date), 2, 3, 2, N'78438687547', N'douglass_wagner25@mail.com', N'MqywT7', N'ob6ePw')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (30, N'Логинова', N'Екатерина', N'Дмитриевна', CAST(N'1988-05-06' AS Date), 1, 3, 2, N'78431414880', N'moriah_mccauley52@gmail.com', N'BF6JDb', N'z1opHh')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (31, N'Федорова', N'Ясмина', N'Алексеевна', CAST(N'2000-10-15' AS Date), 1, 2, 1, N'78431935811', N'normand_bloom53@mail.com', N'eaoH3a', N'0h8vsP')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (32, N'Семенов', N'Павел', N'Никитич', CAST(N'1984-04-25' AS Date), 2, 3, 1, N'78432013949', N'laverne-everett47@mail.com', N'qv5BRo', N'LzZ0jY')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (33, N'Шилов', N'Эмин', N'Максимович', CAST(N'1992-09-08' AS Date), 2, 3, 1, N'78430756229', N'shannon-virgie76@mail.com', N'wJTjo1', N'R3ddsN')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (34, N'Литвинова', N'Мария', N'Михайловна', CAST(N'1987-05-31' AS Date), 1, 2, 1, N'78437085988', N'warner-rhett48@mail.com', N'72TF3h', N'7tG5y2')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (35, N'Дубова', N'Екатерина', N'Арсентьевна', CAST(N'1981-09-11' AS Date), 1, 2, 1, N'78437266482', N'erin-hull90@outlook.com', N'c6zdoD', N'fCq0yq')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (36, N'Голубева', N'Арина', N'Михайловна', CAST(N'1987-11-09' AS Date), 1, 3, 1, N'78438498895', N'hood-octavia42@gmail.com', N'Slxm0z', N'h0jsDo')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (37, N'Максимова', N'Валерия', N'Алексеевна', CAST(N'1997-01-08' AS Date), 1, 2, 2, N'78436158352', N'mervin_mendez4@yahoo.com', N'4WmGSg', N'tOOs0Z')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (38, N'Добрынина', N'Виктория', N'Анатольевна', CAST(N'1985-06-08' AS Date), 1, 3, 1, N'78436065857', N'marcelo_valentine77@hotmail.com', N'Gzmc7U', N'BWr77M')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (39, N'Никитин', N'Игорь', N'Львович', CAST(N'1996-11-19' AS Date), 2, 2, 1, N'78437422248', N'theda-coffman53@outlook.com', N'UT1Zhy', N'PU5HgT')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (40, N'Петров', N'Михаил', N'Кириллович', CAST(N'1982-05-29' AS Date), 2, 2, 1, N'78438886746', N'diehl_madonna85@yahoo.com', N'yv8WKS', N'znpB6X')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (41, N'Константинов', N'Иван', N'Романович', CAST(N'2002-03-30' AS Date), 2, 3, 1, N'78435239750', N'bustamante_cayden9@outlook.com', N'yISCa7', N'ndq52E')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (42, N'Хромов', N'Макар', N'Андреевич', CAST(N'1975-06-24' AS Date), 2, 3, 1, N'78435794260', N'dunbar-maximus79@yahoo.com', N'cmfKP1', N'z0x4Ds')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (43, N'Шилов', N'Артём', N'Александрович', CAST(N'1982-01-28' AS Date), 2, 3, 1, N'78431233623', N'kevon_wiseman28@hotmail.com', N'BfO0n2', N'y3Q0PU')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (44, N'Кузнецов', N'Константин', N'Ильич', CAST(N'1993-05-10' AS Date), 2, 3, 1, N'78430228782', N'lucy-garrison65@yahoo.com', N'mGpo3z', N'kXfxe6')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (45, N'Ефремова', N'Дарья', N'Романовна', CAST(N'1976-09-19' AS Date), 1, 2, 2, N'78430638142', N'ball-jasiah9@mail.com', N'NyZ9eD', N'4YUbPy')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (46, N'Андреева', N'Дарья', N'Леонидовна', CAST(N'1984-09-30' AS Date), 1, 2, 2, N'78431114815', N'reilly-sean56@yahoo.com', N'ClwGC0', N'oVVyo2')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (47, N'Семенова', N'Мария', N'Максимовна', CAST(N'2000-01-28' AS Date), 1, 2, 2, N'78434931176', N'jerrold-steele8@yahoo.com', N'5d49xL', N'Zz26hj')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (48, N'Волков', N'Евгений', N'Егорович', CAST(N'1986-10-18' AS Date), 2, 3, 2, N'78439807731', N'kianna_haywood78@gmail.com', N'MAx4y3', N't4248R')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (49, N'Гаврилов', N'Илья', N'Павлович', CAST(N'1986-10-18' AS Date), 2, 2, 2, N'78439450878', N'jarod_wright53@yahoo.com', N'qNZ6lk', N'WM8AWx')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (50, N'Галкина', N'Александра', N'Ярославовна', CAST(N'2002-07-13' AS Date), 1, 3, 1, N'78439958118', N'browne_edythe57@yahoo.com', N'7Oy3tT', N'hGSC25')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (52, N'ерпипр', N'выакпвер', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (53, N'Волов', N'Александр', N'Семенович', CAST(N'1989-01-12' AS Date), 2, 2, 2, N'89702765432', N'volov@mail.ru', N'6yyv2rs', N'90juoys')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (54, N'Орлов', N'Виктор', N'Константинович', NULL, 2, 2, 2, N'896575345434', N'orlov@mail.ru', N'ggre46', N'yhfd4y')
INSERT [dbo].[WorkTable] ([IDWorker], [Fname], [Name], [Lname], [DateBirthday], [Gender], [WorkPosition], [Status], [Phone], [Email], [Login], [Password]) VALUES (55, N'Семенов', N'Алексей', N'Федорович', CAST(N'1990-12-12' AS Date), 2, 3, 2, N'79718658768', N'semenalex@mail.ru', N'qhyuo123', N'opibv892')
SET IDENTITY_INSERT [dbo].[WorkTable] OFF
SET IDENTITY_INSERT [dbo].[ZakazTable] ON 

INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (1, 2, 2, 4, 1, NULL, 1002, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (2, 2, 2, 4, 1, NULL, 1005, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (3, 2, 2, 4, 1, 35, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (4, 2, 2, 8, 4, 15, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (5, 2, 2, 8, 4, NULL, 1006, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (6, 2, 2, 20, 2, 10, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (7, 2, 2, 20, 2, NULL, 1014, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (8, 2, 2, 10, 10, NULL, 1004, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (9, 2, 2, 13, 3, NULL, 1016, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (10, 2, 2, 13, 3, 25, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (11, 2, 2, 17, 7, 18, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (12, 2, 2, 17, 7, 35, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (13, 2, 2, 17, 7, 15, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (14, 2, 2, 17, 7, 3, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (15, 2, 2, 17, 7, NULL, 1010, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (16, 2, 2, 20, 8, NULL, 1007, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (17, 2, 2, 20, 8, 35, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (18, 2, 2, 8, 9, 9, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (19, 2, 2, 8, 9, NULL, 1002, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (20, 2, 2, 10, 2, NULL, 1009, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (21, 2, 2, 10, 2, 13, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (22, 2, 2, 10, 4, 7, NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (23, 2, 2, 4, 1, NULL, 1002, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (24, 2, 2, 4, 1, NULL, 1005, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (25, 2, 2, 4, 1, 35, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (26, 2, 2, 8, 4, 15, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (27, 2, 2, 8, 4, NULL, 1006, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (28, 2, 2, 20, 2, 10, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (29, 2, 2, 20, 2, NULL, 1014, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (30, 2, 2, 10, 10, NULL, 1004, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (31, 2, 2, 13, 3, NULL, 1016, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (32, 2, 2, 13, 3, 25, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (33, 2, 2, 20, 8, NULL, 1007, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (34, 2, 2, 20, 8, 35, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (35, 2, 2, 8, 9, 9, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (36, 2, 2, 8, 9, NULL, 1002, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (37, 2, 2, 10, 2, NULL, 1009, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (38, 2, 2, 10, 2, 13, NULL, CAST(N'2024-02-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (39, 2, 2, 22, 7, 35, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (40, 2, 2, 22, 7, 15, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (41, 2, 2, 23, 8, 3, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (42, 2, 2, 23, 8, NULL, 1010, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (43, 2, 2, 23, 3, NULL, 1007, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (44, 2, 2, 25, 9, 35, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (45, 2, 2, 31, 3, 9, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (46, 1, 2, 25, 2, NULL, 1002, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (47, 1, 2, 34, 4, NULL, 1009, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (48, 1, 1, 21, 10, 13, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (49, 1, 2, 35, 1, 7, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (50, 1, 1, 35, 1, NULL, 1002, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (51, 1, 1, 34, 5, NULL, 1005, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (52, 1, 1, 23, 4, 35, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (53, 1, 1, 31, 2, 15, NULL, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (54, 1, 1, 31, 2, NULL, 1006, CAST(N'2024-02-03' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (55, 1, 1, 4, 5, 2, 1002, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (56, 1, 1, 1, NULL, 2, NULL, NULL)
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (57, 1, 2, 4, 3, 2, 1010, CAST(N'2024-03-02' AS Date))
INSERT [dbo].[ZakazTable] ([IDZakaz], [StatusOfic], [StatusCook], [Oficiant], [NTable], [NDish], [NDrink], [DateZakaz]) VALUES (58, 2, 2, 4, 3, 5, NULL, CAST(N'2024-03-02' AS Date))
SET IDENTITY_INSERT [dbo].[ZakazTable] OFF
ALTER TABLE [dbo].[SmenaTable]  WITH CHECK ADD  CONSTRAINT [FK_SmenaTable_WorkTable] FOREIGN KEY([Worker])
REFERENCES [dbo].[WorkTable] ([IDWorker])
GO
ALTER TABLE [dbo].[SmenaTable] CHECK CONSTRAINT [FK_SmenaTable_WorkTable]
GO
ALTER TABLE [dbo].[WorkTable]  WITH CHECK ADD  CONSTRAINT [FK_WorkTable_GenderTable] FOREIGN KEY([Gender])
REFERENCES [dbo].[GenderTable] ([IDGender])
GO
ALTER TABLE [dbo].[WorkTable] CHECK CONSTRAINT [FK_WorkTable_GenderTable]
GO
ALTER TABLE [dbo].[WorkTable]  WITH CHECK ADD  CONSTRAINT [FK_WorkTable_PositionTable] FOREIGN KEY([WorkPosition])
REFERENCES [dbo].[PositionTable] ([IDPosition])
GO
ALTER TABLE [dbo].[WorkTable] CHECK CONSTRAINT [FK_WorkTable_PositionTable]
GO
ALTER TABLE [dbo].[WorkTable]  WITH CHECK ADD  CONSTRAINT [FK_WorkTable_StatusWorkerTable] FOREIGN KEY([Status])
REFERENCES [dbo].[StatusWorkerTable] ([IDStatusWork])
GO
ALTER TABLE [dbo].[WorkTable] CHECK CONSTRAINT [FK_WorkTable_StatusWorkerTable]
GO
ALTER TABLE [dbo].[ZakazTable]  WITH CHECK ADD  CONSTRAINT [FK_ZakazTable_DishTable1] FOREIGN KEY([NDish])
REFERENCES [dbo].[DishTable] ([IDDish])
GO
ALTER TABLE [dbo].[ZakazTable] CHECK CONSTRAINT [FK_ZakazTable_DishTable1]
GO
ALTER TABLE [dbo].[ZakazTable]  WITH CHECK ADD  CONSTRAINT [FK_ZakazTable_DrinkTable1] FOREIGN KEY([NDrink])
REFERENCES [dbo].[DrinkTable] ([IDDrink])
GO
ALTER TABLE [dbo].[ZakazTable] CHECK CONSTRAINT [FK_ZakazTable_DrinkTable1]
GO
ALTER TABLE [dbo].[ZakazTable]  WITH CHECK ADD  CONSTRAINT [FK_ZakazTable_StatusCookTable] FOREIGN KEY([StatusCook])
REFERENCES [dbo].[StatusCookTable] ([IDStatusCook])
GO
ALTER TABLE [dbo].[ZakazTable] CHECK CONSTRAINT [FK_ZakazTable_StatusCookTable]
GO
ALTER TABLE [dbo].[ZakazTable]  WITH CHECK ADD  CONSTRAINT [FK_ZakazTable_StatusOficTable] FOREIGN KEY([StatusOfic])
REFERENCES [dbo].[StatusOficTable] ([IDStatusOfic])
GO
ALTER TABLE [dbo].[ZakazTable] CHECK CONSTRAINT [FK_ZakazTable_StatusOficTable]
GO
ALTER TABLE [dbo].[ZakazTable]  WITH CHECK ADD  CONSTRAINT [FK_ZakazTable_WorkTable] FOREIGN KEY([Oficiant])
REFERENCES [dbo].[WorkTable] ([IDWorker])
GO
ALTER TABLE [dbo].[ZakazTable] CHECK CONSTRAINT [FK_ZakazTable_WorkTable]
GO
USE [master]
GO
ALTER DATABASE [cafe_db] SET  READ_WRITE 
GO
