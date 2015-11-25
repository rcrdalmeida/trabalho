﻿CREATE TABLE [dbo].[LINHA_LOTE] (
    [ID_LOTE]    INT NOT NULL,
    [ID_PRODUTO] INT NOT NULL,
    CONSTRAINT [PK_LINHA_LOTE] PRIMARY KEY CLUSTERED ([ID_LOTE] ASC, [ID_PRODUTO] ASC),
    CONSTRAINT [FK_LINHA_LO_RELATIONS_LOTE] FOREIGN KEY ([ID_LOTE]) REFERENCES [dbo].[LOTE] ([ID_LOTE]),
    CONSTRAINT [FK_LINHA_LO_RELATIONS_PRODUTOS] FOREIGN KEY ([ID_PRODUTO]) REFERENCES [dbo].[PRODUTOS] ([ID_PRODUTO])
);

