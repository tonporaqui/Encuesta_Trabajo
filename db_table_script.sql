create database ENCUESTA
use ENCUESTA

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENCUESTAS') and o.name = 'FK_ENCUESTA_RELATIONS_USUARIO')
alter table ENCUESTAS
   drop constraint FK_ENCUESTA_RELATIONS_USUARIO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENCUESTAS') and o.name = 'FK_ENCUESTA_RELATIONS_ITEM_UNO')
alter table ENCUESTAS
   drop constraint FK_ENCUESTA_RELATIONS_ITEM_UNO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENCUESTAS') and o.name = 'FK_ENCUESTA_RELATIONS_ITEM_TRE')
alter table ENCUESTAS
   drop constraint FK_ENCUESTA_RELATIONS_ITEM_TRE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENCUESTAS') and o.name = 'FK_ENCUESTA_RELATIONS_ITEM_DOS')
alter table ENCUESTAS
   drop constraint FK_ENCUESTA_RELATIONS_ITEM_DOS
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENCUESTAS') and o.name = 'FK_ENCUESTA_RELATIONS_RESULTAD')
alter table ENCUESTAS
   drop constraint FK_ENCUESTA_RELATIONS_RESULTAD
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GRUPOS') and o.name = 'FK_GRUPOS_RELATIONS_USUARIO')
alter table GRUPOS
   drop constraint FK_GRUPOS_RELATIONS_USUARIO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEM_DOS') and o.name = 'FK_ITEM_DOS_RELATIONS_ENCUESTA')
alter table ITEM_DOS
   drop constraint FK_ITEM_DOS_RELATIONS_ENCUESTA
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEM_TRES') and o.name = 'FK_ITEM_TRE_RELATIONS_ENCUESTA')
alter table ITEM_TRES
   drop constraint FK_ITEM_TRE_RELATIONS_ENCUESTA
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEM_UNO') and o.name = 'FK_ITEM_UNO_RELATIONS_ENCUESTA')
alter table ITEM_UNO
   drop constraint FK_ITEM_UNO_RELATIONS_ENCUESTA
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESULTADO') and o.name = 'FK_RESULTAD_RELATIONS_ENCUESTA')
alter table RESULTADO
   drop constraint FK_RESULTAD_RELATIONS_ENCUESTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENCUESTAS')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENCUESTAS.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENCUESTAS')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENCUESTAS.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENCUESTAS')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENCUESTAS.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENCUESTAS')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENCUESTAS.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENCUESTAS')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENCUESTAS.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENCUESTAS')
            and   type = 'U')
   drop table ENCUESTAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GRUPOS')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index GRUPOS.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GRUPOS')
            and   type = 'U')
   drop table GRUPOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEM_DOS')
            and   name  = 'RELATIONSHIP_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEM_DOS.RELATIONSHIP_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ITEM_DOS')
            and   type = 'U')
   drop table ITEM_DOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEM_TRES')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEM_TRES.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ITEM_TRES')
            and   type = 'U')
   drop table ITEM_TRES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEM_UNO')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEM_UNO.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ITEM_UNO')
            and   type = 'U')
   drop table ITEM_UNO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESULTADO')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESULTADO.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESULTADO')
            and   type = 'U')
   drop table RESULTADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: ENCUESTAS                                             */
/*==============================================================*/
create table ENCUESTAS (
   ID_ENCUESTA          int                  not null,
   ID_ITEM3             int                  null,
   ID_USUARIO           int                  null,
   ID_RESULTADO         int                  null,
   ID_ITEM2             int                  null,
   ID_ITEM1             int                  null,
   ID_JEFE              int                  null,
   ID_ENCUESTADO        int                  null,
   ESTADO               varchar(7)           null,
   constraint PK_ENCUESTAS primary key nonclustered (ID_ENCUESTA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on ENCUESTAS (
ID_USUARIO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on ENCUESTAS (
ID_ITEM1 ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on ENCUESTAS (
ID_ITEM3 ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on ENCUESTAS (
ID_ITEM2 ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on ENCUESTAS (
ID_RESULTADO ASC
)
go

/*==============================================================*/
/* Table: GRUPOS                                                */
/*==============================================================*/
create table GRUPOS (
   ID_GRUPO             int                  not null,
   ID_USUARIO           int                  null,
   ID_JEFE              int                  null,
   ID_ENCUESTADO        int                  null,
   constraint PK_GRUPOS primary key nonclustered (ID_GRUPO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on GRUPOS (
ID_USUARIO ASC
)
go

/*==============================================================*/
/* Table: ITEM_DOS                                              */
/*==============================================================*/
create table ITEM_DOS (
   ID_ITEM2             int                  not null,
   ID_ENCUESTA          int                  null,
   ENCUESTA_ID          int                  null,
   DOS_RES_UNO          char(1)              null,
   DOS_RES_DOS          char(1)              null,
   DOS_RES_TRES         char(1)              null,
   constraint PK_ITEM_DOS primary key nonclustered (ID_ITEM2)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on ITEM_DOS (
ID_ENCUESTA ASC
)
go

/*==============================================================*/
/* Table: ITEM_TRES                                             */
/*==============================================================*/
create table ITEM_TRES (
   ID_ITEM3             int                  not null,
   ID_ENCUESTA          int                  null,
   ENCUESTA_ID          int                  null,
   TRES_RES_UNO         char(1)              null,
   TRES_RES_DOS         char(1)              null,
   TRES_RES_TRES        char(1)              null,
   TRES_RES_CUATRO      char(1)              null,
   TRES_RES_CINCO       char(1)              null,
   TRES_RES_SEIS        varchar(250)         null,
   TRES_RES_OBS_GENERAL varchar(250)         null,
   constraint PK_ITEM_TRES primary key nonclustered (ID_ITEM3)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on ITEM_TRES (
ID_ENCUESTA ASC
)
go

/*==============================================================*/
/* Table: ITEM_UNO                                              */
/*==============================================================*/
create table ITEM_UNO (
   ID_ITEM1             int                  not null,
   ID_ENCUESTA          int                  null,
   ENCUESTA_ID          int                  null,
   UNO_RES_UNO          char(1)              null,
   UNO_RES_DOS          char(1)              null,
   UNO_RES_TRES         char(1)              null,
   UNO_RES_CUATRO       char(1)              null,
   UNO_RES_CINCO        char(1)              null,
   UNO_RES_SEIS         char(1)              null,
   UNO_RES_OBS_D        varchar(250)         null,
   UNO_RES_OBS_E        varchar(250)         null,
   constraint PK_ITEM_UNO primary key nonclustered (ID_ITEM1)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on ITEM_UNO (
ID_ENCUESTA ASC
)
go

/*==============================================================*/
/* Table: RESULTADO                                             */
/*==============================================================*/
create table RESULTADO (
   ID_RESULTADO         int                  not null,
   ID_ENCUESTA          int                  null,
   PORCENTAJE           decimal(0,0)         null,
   DESEMPENO            varchar(100)         null,
   constraint PK_RESULTADO primary key nonclustered (ID_RESULTADO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on RESULTADO (
ID_ENCUESTA ASC
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           int                  not null,
   NOMBRE               varchar(100)         null,
   APELLIDO             varchar(100)         null,
   PASSWORD             varchar(8)           null,
   PERFIL               varchar(7)           null,
   constraint PK_USUARIO primary key nonclustered (ID_USUARIO)
)
go

alter table ENCUESTAS
   add constraint FK_ENCUESTA_RELATIONS_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table ENCUESTAS
   add constraint FK_ENCUESTA_RELATIONS_ITEM_UNO foreign key (ID_ITEM1)
      references ITEM_UNO (ID_ITEM1)
go

alter table ENCUESTAS
   add constraint FK_ENCUESTA_RELATIONS_ITEM_TRE foreign key (ID_ITEM3)
      references ITEM_TRES (ID_ITEM3)
go

alter table ENCUESTAS
   add constraint FK_ENCUESTA_RELATIONS_ITEM_DOS foreign key (ID_ITEM2)
      references ITEM_DOS (ID_ITEM2)
go

alter table ENCUESTAS
   add constraint FK_ENCUESTA_RELATIONS_RESULTAD foreign key (ID_RESULTADO)
      references RESULTADO (ID_RESULTADO)
go

alter table GRUPOS
   add constraint FK_GRUPOS_RELATIONS_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table ITEM_DOS
   add constraint FK_ITEM_DOS_RELATIONS_ENCUESTA foreign key (ID_ENCUESTA)
      references ENCUESTAS (ID_ENCUESTA)
go

alter table ITEM_TRES
   add constraint FK_ITEM_TRE_RELATIONS_ENCUESTA foreign key (ID_ENCUESTA)
      references ENCUESTAS (ID_ENCUESTA)
go

alter table ITEM_UNO
   add constraint FK_ITEM_UNO_RELATIONS_ENCUESTA foreign key (ID_ENCUESTA)
      references ENCUESTAS (ID_ENCUESTA)
go

alter table RESULTADO
   add constraint FK_RESULTAD_RELATIONS_ENCUESTA foreign key (ID_ENCUESTA)
      references ENCUESTAS (ID_ENCUESTA)
go
