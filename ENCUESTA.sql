/****** Object:  ForeignKey [FK_ENCUESTA_USUARIO_E_USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENCUESTA_USUARIO_E_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]'))
ALTER TABLE [dbo].[ENCUESTAS] DROP CONSTRAINT [FK_ENCUESTA_USUARIO_E_USUARIO]
GO
/****** Object:  ForeignKey [FK_GRUPOS_USUARIO_G_USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GRUPOS_USUARIO_G_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[GRUPOS]'))
ALTER TABLE [dbo].[GRUPOS] DROP CONSTRAINT [FK_GRUPOS_USUARIO_G_USUARIO]
GO
/****** Object:  ForeignKey [FK_ITEM_DOS_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_DOS_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]'))
ALTER TABLE [dbo].[ITEM_DOS] DROP CONSTRAINT [FK_ITEM_DOS_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_ITEM_TRE_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_TRE_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]'))
ALTER TABLE [dbo].[ITEM_TRES] DROP CONSTRAINT [FK_ITEM_TRE_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_ITEM_UNO_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_UNO_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]'))
ALTER TABLE [dbo].[ITEM_UNO] DROP CONSTRAINT [FK_ITEM_UNO_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_RESULTAD_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTAD_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTADO]'))
ALTER TABLE [dbo].[RESULTADO] DROP CONSTRAINT [FK_RESULTAD_ENCUESTA__ENCUESTA]
GO
/****** Object:  Table [dbo].[ITEM_DOS]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]') AND type in (N'U'))
DROP TABLE [dbo].[ITEM_DOS]
GO
/****** Object:  Table [dbo].[ITEM_TRES]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]') AND type in (N'U'))
DROP TABLE [dbo].[ITEM_TRES]
GO
/****** Object:  Table [dbo].[ITEM_UNO]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]') AND type in (N'U'))
DROP TABLE [dbo].[ITEM_UNO]
GO
/****** Object:  Table [dbo].[RESULTADO]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESULTADO]') AND type in (N'U'))
DROP TABLE [dbo].[RESULTADO]
GO
/****** Object:  Table [dbo].[ENCUESTAS]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND type in (N'U'))
DROP TABLE [dbo].[ENCUESTAS]
GO
/****** Object:  Table [dbo].[GRUPOS]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GRUPOS]') AND type in (N'U'))
DROP TABLE [dbo].[GRUPOS]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO]') AND type in (N'U'))
DROP TABLE [dbo].[USUARIO]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[USUARIO](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[RUT] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[NOMBRE] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[APELLIDO] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[PASSWORD] [varchar](8) COLLATE Modern_Spanish_CI_AS NULL,
	[PERFIL] [varchar](7) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY NONCLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON
INSERT [dbo].[USUARIO] ([ID_USUARIO], [RUT], [NOMBRE], [APELLIDO], [PASSWORD], [PERFIL]) VALUES (1, N'13917688-k', N'GASTON', N'SEPULVEDA', N'123', N'CON')
INSERT [dbo].[USUARIO] ([ID_USUARIO], [RUT], [NOMBRE], [APELLIDO], [PASSWORD], [PERFIL]) VALUES (2, N'12345678-k', N'Prueba', N'Evaluado', N'123', N'eva')
INSERT [dbo].[USUARIO] ([ID_USUARIO], [RUT], [NOMBRE], [APELLIDO], [PASSWORD], [PERFIL]) VALUES (3, N'87654321-k', N'OTRO', N'EVALUAR', N'123', N'eva')
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
/****** Object:  Table [dbo].[GRUPOS]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GRUPOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GRUPOS](
	[ID_GRUPO] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NULL,
	[ID_JEFE] [int] NULL,
	[ID_ENCUESTADO] [int] NULL,
 CONSTRAINT [PK_GRUPOS] PRIMARY KEY NONCLUSTERED 
(
	[ID_GRUPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GRUPOS]') AND name = N'RELATIONSHIP_1_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_1_FK] ON [dbo].[GRUPOS] 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[GRUPOS] ON
INSERT [dbo].[GRUPOS] ([ID_GRUPO], [ID_USUARIO], [ID_JEFE], [ID_ENCUESTADO]) VALUES (1, 2, 1, 2)
INSERT [dbo].[GRUPOS] ([ID_GRUPO], [ID_USUARIO], [ID_JEFE], [ID_ENCUESTADO]) VALUES (2, 3, 1, 3)
SET IDENTITY_INSERT [dbo].[GRUPOS] OFF
/****** Object:  Table [dbo].[ENCUESTAS]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENCUESTAS](
	[ID_ENCUESTA] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NULL,
	[ID_JEFE] [int] NULL,
	[ID_ENCUESTADO] [int] NULL,
	[ESTADO] [varchar](7) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_ENCUESTAS] PRIMARY KEY NONCLUSTERED 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND name = N'RELATIONSHIP_2_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_2_FK] ON [dbo].[ENCUESTAS] 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND name = N'RELATIONSHIP_3_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_3_FK] ON [dbo].[ENCUESTAS] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND name = N'RELATIONSHIP_5_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_5_FK] ON [dbo].[ENCUESTAS] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND name = N'RELATIONSHIP_7_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_7_FK] ON [dbo].[ENCUESTAS] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]') AND name = N'RELATIONSHIP_9_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_9_FK] ON [dbo].[ENCUESTAS] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[ENCUESTAS] ON
INSERT [dbo].[ENCUESTAS] ([ID_ENCUESTA], [ID_USUARIO], [ID_JEFE], [ID_ENCUESTADO], [ESTADO]) VALUES (12, 1, 1, 2, N'activa')
INSERT [dbo].[ENCUESTAS] ([ID_ENCUESTA], [ID_USUARIO], [ID_JEFE], [ID_ENCUESTADO], [ESTADO]) VALUES (13, 1, 1, 3, N'activa')
SET IDENTITY_INSERT [dbo].[ENCUESTAS] OFF
/****** Object:  Table [dbo].[RESULTADO]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESULTADO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RESULTADO](
	[ID_RESULTADO] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENCUESTA] [int] NULL,
	[PUNTAJE] [int] NULL,
	[DESEMPENO] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_RESULTADO] PRIMARY KEY NONCLUSTERED 
(
	[ID_RESULTADO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RESULTADO]') AND name = N'RELATIONSHIP_10_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_10_FK] ON [dbo].[RESULTADO] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[RESULTADO] ON
INSERT [dbo].[RESULTADO] ([ID_RESULTADO], [ID_ENCUESTA], [PUNTAJE], [DESEMPENO]) VALUES (1, 12, 56, N'Bueno')
INSERT [dbo].[RESULTADO] ([ID_RESULTADO], [ID_ENCUESTA], [PUNTAJE], [DESEMPENO]) VALUES (2, 13, 64, N'Muy Bueno')
SET IDENTITY_INSERT [dbo].[RESULTADO] OFF
/****** Object:  Table [dbo].[ITEM_UNO]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ITEM_UNO](
	[ID_ITEM1] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENCUESTA] [int] NULL,
	[ENCUESTA_ID] [int] NULL,
	[UNO_RES_UNO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_DOS] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_TRES] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_CUATRO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_CINCO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_SEIS] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_SIETE] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_OBS_D] [varchar](250) COLLATE Modern_Spanish_CI_AS NULL,
	[UNO_RES_OBS_E] [varchar](250) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_ITEM_UNO] PRIMARY KEY NONCLUSTERED 
(
	[ID_ITEM1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]') AND name = N'RELATIONSHIP_4_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_4_FK] ON [dbo].[ITEM_UNO] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[ITEM_UNO] ON
INSERT [dbo].[ITEM_UNO] ([ID_ITEM1], [ID_ENCUESTA], [ENCUESTA_ID], [UNO_RES_UNO], [UNO_RES_DOS], [UNO_RES_TRES], [UNO_RES_CUATRO], [UNO_RES_CINCO], [UNO_RES_SEIS], [UNO_RES_SIETE], [UNO_RES_OBS_D], [UNO_RES_OBS_E]) VALUES (1, 12, 12, N'a', N'd', N'a', N'd', N'a', N'd', N'a', N'PEQUEÑA PRUEBA', N'YUPI PA TI YUPI PA MI')
INSERT [dbo].[ITEM_UNO] ([ID_ITEM1], [ID_ENCUESTA], [ENCUESTA_ID], [UNO_RES_UNO], [UNO_RES_DOS], [UNO_RES_TRES], [UNO_RES_CUATRO], [UNO_RES_CINCO], [UNO_RES_SEIS], [UNO_RES_SIETE], [UNO_RES_OBS_D], [UNO_RES_OBS_E]) VALUES (2, 13, 13, N'b', N'b', N'b', N'b', N'b', N'b', N'b', N'asdasdasdjhg', N'chachara')
SET IDENTITY_INSERT [dbo].[ITEM_UNO] OFF
/****** Object:  Table [dbo].[ITEM_TRES]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ITEM_TRES](
	[ID_ITEM3] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENCUESTA] [int] NULL,
	[ENCUESTA_ID] [int] NULL,
	[TRES_RES_UNO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_DOS] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_TRES] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_CUATRO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_CINCO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_SEIS] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TRES_RES_OBS_GENERAL] [varchar](250) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_ITEM_TRES] PRIMARY KEY NONCLUSTERED 
(
	[ID_ITEM3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]') AND name = N'RELATIONSHIP_6_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_6_FK] ON [dbo].[ITEM_TRES] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[ITEM_TRES] ON
INSERT [dbo].[ITEM_TRES] ([ID_ITEM3], [ID_ENCUESTA], [ENCUESTA_ID], [TRES_RES_UNO], [TRES_RES_DOS], [TRES_RES_TRES], [TRES_RES_CUATRO], [TRES_RES_CINCO], [TRES_RES_SEIS], [TRES_RES_OBS_GENERAL]) VALUES (1, 12, 12, N'a', N'd', N'a', N'd', N'a', N'd', N'observacion general')
INSERT [dbo].[ITEM_TRES] ([ID_ITEM3], [ID_ENCUESTA], [ENCUESTA_ID], [TRES_RES_UNO], [TRES_RES_DOS], [TRES_RES_TRES], [TRES_RES_CUATRO], [TRES_RES_CINCO], [TRES_RES_SEIS], [TRES_RES_OBS_GENERAL]) VALUES (2, 13, 13, N'b', N'b', N'b', N'b', N'b', N'b', N'kdoadjoasdijaosdij')
SET IDENTITY_INSERT [dbo].[ITEM_TRES] OFF
/****** Object:  Table [dbo].[ITEM_DOS]    Script Date: 11/10/2014 21:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ITEM_DOS](
	[ID_ITEM2] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENCUESTA] [int] NULL,
	[ENCUESTA_ID] [int] NULL,
	[DOS_RES_UNO] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[DOS_RES_DOS] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[DOS_RES_TRES] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_ITEM_DOS] PRIMARY KEY NONCLUSTERED 
(
	[ID_ITEM2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]') AND name = N'RELATIONSHIP_8_FK')
CREATE NONCLUSTERED INDEX [RELATIONSHIP_8_FK] ON [dbo].[ITEM_DOS] 
(
	[ID_ENCUESTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[ITEM_DOS] ON
INSERT [dbo].[ITEM_DOS] ([ID_ITEM2], [ID_ENCUESTA], [ENCUESTA_ID], [DOS_RES_UNO], [DOS_RES_DOS], [DOS_RES_TRES]) VALUES (1, 12, 12, N'd', N'a', N'd')
INSERT [dbo].[ITEM_DOS] ([ID_ITEM2], [ID_ENCUESTA], [ENCUESTA_ID], [DOS_RES_UNO], [DOS_RES_DOS], [DOS_RES_TRES]) VALUES (2, 13, 13, N'b', N'b', N'b')
SET IDENTITY_INSERT [dbo].[ITEM_DOS] OFF
/****** Object:  ForeignKey [FK_ENCUESTA_USUARIO_E_USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENCUESTA_USUARIO_E_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]'))
ALTER TABLE [dbo].[ENCUESTAS]  WITH CHECK ADD  CONSTRAINT [FK_ENCUESTA_USUARIO_E_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENCUESTA_USUARIO_E_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENCUESTAS]'))
ALTER TABLE [dbo].[ENCUESTAS] CHECK CONSTRAINT [FK_ENCUESTA_USUARIO_E_USUARIO]
GO
/****** Object:  ForeignKey [FK_GRUPOS_USUARIO_G_USUARIO]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GRUPOS_USUARIO_G_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[GRUPOS]'))
ALTER TABLE [dbo].[GRUPOS]  WITH CHECK ADD  CONSTRAINT [FK_GRUPOS_USUARIO_G_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USUARIO] ([ID_USUARIO])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GRUPOS_USUARIO_G_USUARIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[GRUPOS]'))
ALTER TABLE [dbo].[GRUPOS] CHECK CONSTRAINT [FK_GRUPOS_USUARIO_G_USUARIO]
GO
/****** Object:  ForeignKey [FK_ITEM_DOS_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_DOS_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]'))
ALTER TABLE [dbo].[ITEM_DOS]  WITH CHECK ADD  CONSTRAINT [FK_ITEM_DOS_ENCUESTA__ENCUESTA] FOREIGN KEY([ID_ENCUESTA])
REFERENCES [dbo].[ENCUESTAS] ([ID_ENCUESTA])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_DOS_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_DOS]'))
ALTER TABLE [dbo].[ITEM_DOS] CHECK CONSTRAINT [FK_ITEM_DOS_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_ITEM_TRE_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_TRE_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]'))
ALTER TABLE [dbo].[ITEM_TRES]  WITH CHECK ADD  CONSTRAINT [FK_ITEM_TRE_ENCUESTA__ENCUESTA] FOREIGN KEY([ID_ENCUESTA])
REFERENCES [dbo].[ENCUESTAS] ([ID_ENCUESTA])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_TRE_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_TRES]'))
ALTER TABLE [dbo].[ITEM_TRES] CHECK CONSTRAINT [FK_ITEM_TRE_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_ITEM_UNO_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_UNO_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]'))
ALTER TABLE [dbo].[ITEM_UNO]  WITH CHECK ADD  CONSTRAINT [FK_ITEM_UNO_ENCUESTA__ENCUESTA] FOREIGN KEY([ID_ENCUESTA])
REFERENCES [dbo].[ENCUESTAS] ([ID_ENCUESTA])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ITEM_UNO_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ITEM_UNO]'))
ALTER TABLE [dbo].[ITEM_UNO] CHECK CONSTRAINT [FK_ITEM_UNO_ENCUESTA__ENCUESTA]
GO
/****** Object:  ForeignKey [FK_RESULTAD_ENCUESTA__ENCUESTA]    Script Date: 11/10/2014 21:33:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTAD_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTADO]'))
ALTER TABLE [dbo].[RESULTADO]  WITH CHECK ADD  CONSTRAINT [FK_RESULTAD_ENCUESTA__ENCUESTA] FOREIGN KEY([ID_ENCUESTA])
REFERENCES [dbo].[ENCUESTAS] ([ID_ENCUESTA])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTAD_ENCUESTA__ENCUESTA]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTADO]'))
ALTER TABLE [dbo].[RESULTADO] CHECK CONSTRAINT [FK_RESULTAD_ENCUESTA__ENCUESTA]
GO
