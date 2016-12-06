
/****** Object: Table [dbo].[Recipe] Script Date: 11/15/2016 9:57:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cuisine] (
    [Cuisine_Id]   INT           IDENTITY (1, 1) NOT NULL,
    [CuisineName]  NVARCHAR (50) NOT NULL,
);

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (1, N'Italian')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (2, N'Greek')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (3, N'Chinese')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (4, N'Japanese')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (5, N'English')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (6, N'Mexican')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (7, N'Indian')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (8, N'Persian')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (9, N'Jamaican')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT INTO [dbo].[Cuisine] ([Cuisine_Id], [CuisineName]) VALUES (10, N'Other')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF

/****** Object: SqlProcedure [dbo].[Recipe_Details_Update] Script Date: 11/15/2016 10:25:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE Recipe_Details_Update
(@Description nvarchar(2000),
 @RecipeName nvarchar(50),
 @cuisine NVARCHAR (50),
 @CookingTime nvarchar(50),
 @Category NVARCHAR (50),
 @PrivateC int,
 @Recipe_Id int
 )
AS
update Recipe
set 
Description = @Description,
RecipeName = @RecipeName,
Cuisine = @cuisine,
CookingTime = @CookingTime,
PrivateC = @PrivateC,
Category = @Category
where Recipe_Id = @Recipe_Id
RETURN