/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Static Data Inserts */

SET IDENTITY_INSERT [Dimension].[BudgetAccounts] ON 

INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (1, N'Income', N'Everyday')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (2, N'Expense', N'Everyday')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (3, N'Credit', N'Mastercard')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (4, N'Food', N'Everyday')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (5, N'Personal Expense', N'Cheque')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (6, N'Commsec', N'Trading Settlement')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (7, N'Personal Savings', N'Award Saver')
INSERT [Dimension].[BudgetAccounts] ([AccountSK], [AccountName], [AccountType]) VALUES (8, N'Investment Savings', N'Award Saver')
SET IDENTITY_INSERT [Dimension].[BudgetAccounts] OFF

SET IDENTITY_INSERT [Dimension].[BudgetItems] ON 

INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (1, N'Credit', N'Debt')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (2, N'Aaron Personal', N'Aaron')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (3, N'Personal Savings', N'Aaron')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (4, N'Savings', N'Investment')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (5, N'Health Insurance', N'Insurance')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (6, N'Rent', N'Housing')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (7, N'Mobile', N'Communication')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (8, N'Contents Insurance', N'Insurance')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (9, N'Food', N'Food')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (10, N'Train', N'Travel')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (11, N'Gym', N'Fitness')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (12, N'Petrol', N'Travel')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (13, N'Telstra', N'Communication')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (14, N'Lexus', N'Debt')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (15, N'Lexus Insurance', N'Insurance')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (16, N'Ford Insurance', N'Insurance')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (17, N'AFR', N'Business')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (18, N'Spotify', N'Discretionary')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (19, N'Gas', N'Utilities')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (20, N'Barking Cat', N'Business')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (21, N'Electricity', N'Utilities')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (22, N'Tolls', N'Travel')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (23, N'Fees', N'Fees')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (24, N'Car Expense', N'Travel')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (25, N'Gifts', N'Discretionary')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (26, N'Net Income', N'Income')
INSERT [Dimension].[BudgetItems] ([ItemSK], [ItemName], [ItemCategory]) VALUES (27, N'Transfer', N'Expenses')
SET IDENTITY_INSERT [Dimension].[BudgetItems] OFF


/* Test Data */
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 26, 1900.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 1, -7.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 27, -40.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 27, -900.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 3, -75.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 4, -725.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 9, -150.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 1, 23, -2.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 5, -25.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 6, -465.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 7, -40.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 8, -12.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 10, -40.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 11, -21.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 13, -28.7500)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 14, -128.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 15, -20.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 16, -20.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 17, -14.7500)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 18, -4.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 19, -7.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 20, -28.6700)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 21, -12.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 22, -5.0000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 23, -2.5000)
INSERT [Fact].[BudgetMeasures] ([DateSK], [AccountSK], [ItemSK], [WeeklyAmount]) VALUES (20150421, 2, 27, 900.0000)

GO
