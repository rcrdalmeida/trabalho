SET IDENTITY_INSERT [dbo].[PROMOCOES] ON
INSERT INTO [dbo].[PROMOCOES] ([ID_PROMOCAO], [NOME], [DATA_INICIO], [DATA_FIM], [PERCENTAGEM_DESCONTO]) VALUES (1, N'Leve 2 pague 1', N'2015-11-10', N'2015-11-25', 10)
INSERT INTO [dbo].[PROMOCOES] ([ID_PROMOCAO], [NOME], [DATA_INICIO], [DATA_FIM], [PERCENTAGEM_DESCONTO]) VALUES (2, N'10% Desconto', N'2015-11-12', N'2015-12-25', 10)
INSERT INTO [dbo].[PROMOCOES] ([ID_PROMOCAO], [NOME], [DATA_INICIO], [DATA_FIM], [PERCENTAGEM_DESCONTO]) VALUES (3, N'20% Desconto', N'2015-09-25', N'2015-10-10', 20)
INSERT INTO [dbo].[PROMOCOES] ([ID_PROMOCAO], [NOME], [DATA_INICIO], [DATA_FIM], [PERCENTAGEM_DESCONTO]) VALUES (5, N'Leve 3 Pague 1', N'2015-08-07', N'2015-09-10', NULL)
INSERT INTO [dbo].[PROMOCOES] ([ID_PROMOCAO], [NOME], [DATA_INICIO], [DATA_FIM], [PERCENTAGEM_DESCONTO]) VALUES (6, N'30% Desconto', N'2015-05-23', N'2015-12-25', 30)
SET IDENTITY_INSERT [dbo].[PROMOCOES] OFF