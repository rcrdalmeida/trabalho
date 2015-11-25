

alter table ENCOMENDA
   add constraint FK_ENCOMEND_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table LINHA_ENCOMENDA
   add constraint FK_LINHA_EN_RELATIONS_PRODUTOS foreign key (ID_PRODUTO)
      references PRODUTOS (ID_PRODUTO);

alter table LINHA_ENCOMENDA
   add constraint FK_LINHA_EN_RELATIONS_ENCOMEND foreign key (ID_ENCOMENDA)
      references ENCOMENDA (ID_ENCOMENDA);

alter table LINHA_LOTE
   add constraint FK_LINHA_LO_RELATIONS_LOTE foreign key (ID_LOTE)
      references LOTE (ID_LOTE);

alter table LINHA_LOTE
   add constraint FK_LINHA_LO_RELATIONS_PRODUTOS foreign key (ID_PRODUTO)
      references PRODUTOS (ID_PRODUTO);

alter table LINHA_PROMOCAO
   add constraint FK_LINHA_PR_RELATIONS_PRODUTOS foreign key (ID_PRODUTO)
      references PRODUTOS (ID_PRODUTO);

alter table LINHA_PROMOCAO
   add constraint FK_LINHA_PR_RELATIONS_PROMOCOE foreign key (ID_PROMOCAO)
      references PROMOCOES (ID_PROMOCAO);

alter table LINHA_RECLAMACAO
   add constraint FK_LINHA_RE_RELATIONS_RECLAMAC foreign key (ID_RECLAMACAO)
      references RECLAMACOES (ID_RECLAMACAO);

alter table LINHA_RECLAMACAO
   add constraint FK_LINHA_RE_RELATIONS_FUNCIONA foreign key (ID_FUNCIONARIO)
      references FUNCIONARIO (ID_FUNCIONARIO);

alter table LINHA_RECLAMACAO
   add constraint FK_LINHA_RE_RELATIONS_ENCOMEND foreign key (ID_ENCOMENDA)
      references ENCOMENDA (ID_ENCOMENDA);

alter table LINHA_SUGESTAO
   add constraint FK_LINHA_SU_RELATIONS_SUGESTOE foreign key (ID_SUGESTAO)
      references SUGESTOES (ID_SUGESTAO);

alter table LINHA_SUGESTAO
   add constraint FK_LINHA_SU_RELATIONS_FUNCIONA foreign key (ID_FUNCIONARIO)
      references FUNCIONARIO (ID_FUNCIONARIO);

