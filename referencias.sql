alter table tbl_sala add constraint fk_especialidade
foreign key (cod_especialidade)
references tbl_especialidade (cod_especialidade);

#relacionamento entre a tabela insumos e pacientes 

alter table tbl_insumo add constraint fk_paciente
foreign key (cod_paciente)
references tbl_paciente (cod_paciente);

#relacionamento entre a tabela medico e especialidades

alter table tbl_medico add constraint fk_medico_especialidade
foreign key (cod_especialidade)
references tbl_especialidade (cod_especialidade);

#relacionamentos da tabela de agenda
alter table tbl_agenda add constraint fk_agenda_sala
foreign key (cod_sala)
references tbl_sala (cod_sala);

alter table tbl_agenda add constraint fk_agenda_medico
foreign key (cod_medico)
references tbl_medico (cod_medico);

alter table tbl_agenda add constraint fk_agenda_paciente
foreign key (cod_paciente)
references tbl_paciente (cod_paciente);