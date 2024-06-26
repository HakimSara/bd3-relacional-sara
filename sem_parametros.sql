
#CRIAÇÃO DE UMA STORED PROCEDURE SEM PARAMETROS

DELIMITER $ 

CREATE PROCEDURE LISTAGEM_AGENDA()
BEGIN

SELECT
	ta.data_cirurgia, ta.status_cirurgia,
	ts.nro_sala,
    tm.nome_medico, tm.celular_medico,
    tp.nome_paciente, tp.celular_paciente,
    tp.nome_responsavel, tp.telefone_responsavel
FROM tbl_agenda AS ta
INNER JOIN tbl_sala AS ts
ON ta.cod_sala = ts.cod_sala
INNER JOIN tbl_medico AS tm
ON ta.cod_medico = tm.cod_me