USE [RecipeDatabase]
GO

/****** Object: Table [dbo].[Recipe] Script Date: 11/15/2016 9:57:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Recipe] (
    [Recipe_Id]   INT           IDENTITY (1, 1) NOT NULL,
    [RecipeName]  NVARCHAR (50) NOT NULL,
    [Contributer] NVARCHAR (50) NOT NULL,
    [Category]    NVARCHAR (50),
    [CookingTime] NVARCHAR (50),
    [Portions]	  INT,
    [Cuisine]     NVARCHAR (50) NOT NULL,
	[PrivateC]	  INT,
    [Description] NVARCHAR (2000) NOT NULL
);

SET IDENTITY_INSERT [dbo].[Recipe] ON
INSERT INTO [dbo].[Recipe] ([Recipe_Id], [RecipeName], [Contributer], [Category], [CookingTime], [Portions], [Cuisine], [Private], [Description]) VALUES (1, N'Mac and Cheese', N'MacLover', N'Light Meal', '15 minutes', 4, N'Western', 1, N'You will need: /n- package of Macaroni Noodles /n- cheddar cheese (as much as you want) /n- 1tsp butter /n- 1/4 cup of milk /n1. Put the noodles in a pot of water and bring it to a boil. When noodles are soft, strain and set aside. /n2. Using a pot, melt the butter then add the milk. Add the cheese and allow to melt. /n3.Add the noodles and stir until blended. ')
SET IDENTITY_INSERT [dbo].[Recipe] OFF

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