Create Table Products (Product_Id int, Country varchar(max), Product varchar(max), Units_Sold DECIMAL , Manufacturing_Price Money, Sale_Price Money, Gross_Sales Money, Sales Money, COGS Money, Profit Money, Date Date, Month_Number INT, Month_Name varchar(max), Year int)
Select * from Products

delete Products where Units_Sold in(1619, 888, 2470)
Drop Table Products

Create Table Products (Product_Id int, Country varchar(max), Product varchar(max), Units_Sold DECIMAL,
Manufacturing_Price int, Sale_Price int, Gross_Sales int, Sales int, COGS int,
Profit int , Date Date, Month_Number int, Month_Name varchar(max), Year int)
Select * from Products
--------------------------------------------------------------------------------------------------------------------------------
--                                      INTERMEDIATE QUESTIONS                                                               --
-------------------------------------------------------------------------------------------------------------------------------
--1) Find the Total Sale Price  and  Gross Sales
Select SUM(Sale_Price) 'Total Sale Price', SUM(Gross_Sales) 'Gross Sales' from Products

--2) In which year we have got the highest sales
Select Top 1 Year from Products Order by Sales


--3)  Which Product having the sales of $ 37,050.00
Select Product from Products where Products.Sales=37050


--4) Which Countries lies between profit of $ 4,605 to $  22 , 662.00
Select Country from Products where Profit between 4605 and 22662


--5) Which Product Id having the sales of $ 24 , 700.00
Select Product_Id from Products where Sales = 24700

--------------------------------------------------------------------------------------------------------------------------
--                                                         Small Table                                                  --
--------------------------------------------------------------------------------------------------------------------------
Select * from [Brands].dbo.Items
--1) Find the item_description having the bottle size of 750
Select item_description from [Brands].dbo.Items where bottle_size=750


--2) Find the vendor Name having the vendor_nos 305 , 380 , 391
Select item_description from [Brands].dbo.Items where vendor_nos in (305,380,391)


--3) What is total Bottle_price 
Select SUM(bottle_price) from [Brands].dbo.Items

--4) Make Primary Key to Item_id
--Done from Table design

--5) Which item id having the bottle_price of $ 5.06
Select Item_Id from [Brands].dbo.Items where bottle_price = 5.06

-------------------------------------------------------------------------------------------------------------------------------
--                                                         Advance Questions                                                 --
-------------------------------------------------------------------------------------------------------------------------------
Select * from Products
Select * from [Brands].dbo.Items
--1) Apply INNER  , FULL OUTER , LEFT JOIN types on both the table 
Select * from Products Full Outer Join [Brands].dbo.Items on Products.Product_Id=[Brands].dbo.Items.Item_Id
Select * from Products Left Join [Brands].dbo.Items on Products.Product_Id=[Brands].dbo.Items.Item_Id
Select * from Products Inner Join [Brands].dbo.Items on Products.Product_Id=[Brands].dbo.Items.Item_Id



--2) Apply  OUTER  ,  RIGHT JOIN , CROSS JOIN types  on both the table 
Select * from Products Right Join [Brands].dbo.Items on Products.Product_Id=[Brands].dbo.Items.Item_Id
Select * from Products Cross Join [Brands].dbo.Items



--3) Find the item_description and Product having the gross sales of 13,320.00
Select item_description, Product from Products inner join [Brands].dbo.Items on Products.Product_Id=[Brands].dbo.Items.Item_Id
where Products.Gross_Sales=13320


--4) Split the Item_description Column into Columns Item_desc1 and Item_desc2

