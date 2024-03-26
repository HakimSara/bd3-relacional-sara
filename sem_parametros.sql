#criação de uma stored procedure sem parametros para a listagem de dados de agendamento de cirurgia 
delimiter $
create procedure listagem_agenda()
begin
select 
ta.data_cirurgia, ta.status_cirurgia,
ts.nro_sala,
tm.nome_medico, tm.celular_medico,

end
$