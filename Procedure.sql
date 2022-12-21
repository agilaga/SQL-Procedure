USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[ProAgilCom]    Script Date: 21.12.2022 19:22:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[ProAgilCom]
@any int out ,
@usname nvarchar(15),
@pass nvarchar (15)
as  
if exists (select * from Passe where Name=@usname)
begin 
set @any=1
return @any 
end 
else 
begin 
insert into Passe (Name,ID) values (@usname,@pass)
set @any = 0
return @any
end
