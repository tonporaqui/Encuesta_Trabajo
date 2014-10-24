alter procedure sp_getUser 
(
	@rut varchar(10),
	@password varchar(8)
)
as
begin
	select * from USUARIO where RUT = @rut and PASSWORD = @password
end

alter procedure sp_CrearUsuario
(
	@rut varchar(10),
	@nombre varchar(100),
	@apellido varchar(100),
	@password varchar(8),
	@perfil varchar(7)
)
as
begin
	begin try
		if not exists (select rut from USUARIO where rut = @rut)
		begin
			insert into USUARIO values (@rut,@nombre,@apellido,@password,@perfil)
			print ('Cliente Insertado...')
		end
		else
		begin
			print ('Cliente Existe...')
		end
	end try
	begin catch
		print ('error transaccion....')
	end catch
end