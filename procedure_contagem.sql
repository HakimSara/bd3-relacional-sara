#criação de uma stored procedure que conta e retorna o numero total de pacientes 
delimiter $
 create procedure contagem_pacientes(out total_pacientes int(10))
 begin
	Select count (cod_paciente)into total_pacientes from tbl_paciente; 
 end
 $
 call contagem_pacientes(@total_pacientes);
 
 select @total_pacientes;