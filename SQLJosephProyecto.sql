create database ProjectProgra2

create table Persona
(
Id int identity(1,1),
Cedula varchar (20)not null,
Nombre varchar(50)not null,
Apellido1 varchar(50),
Apellido2 varchar(50),
Direccion nvarchar(100),
Telefono varchar(20),
constraint PK_Id primary key(Id),
constraint UQ_Cedula unique (Cedula),
)
select * from Persona

drop table Persona



Create proc sp_ActualizarTabla 
	as
		begin 
		select * from Persona
		end

Create proc sp_AgregarPersona 

@cedula varchar(20),
@nombre varchar(50),
@apellido1 varchar(50),
@apellido2 varchar(50),
@direccion nvarchar(100),
@telefono varchar(20)
	as
		begin 
		insert into Persona (Cedula,Nombre,Apellido1,Apellido2,Direccion,Telefono)
		values (@cedula,@nombre,@apellido1,@apellido2,@direccion,@telefono)
		end

Create proc Sp_ActualizarPersona 
@id int,
@cedula varchar(20),
@nombre varchar(50),
@apellido1 varchar(50),
@apellido2 varchar(50),
@direccion nvarchar(100),
@telefono varchar(20)
	as
		begin 
		update Persona set Cedula = @cedula, Nombre = @nombre, Apellido1 = @apellido1, Apellido2 = @apellido2, Direccion = @direccion, Telefono = @telefono where Id = @id
		end

Create proc Sp_BorrarPersona 
@id int
	as
		begin 
		delete from Persona where Id = @id
		end

Create proc Sp_ConsultarPersona 
@id int
	as
		begin 
		select * from Persona where Id = @id
		end

Create table TipoUsuario
(
Id int identity(1,1),
Descripcion varchar(50)not null,
constraint PK_IdTipoUsuario primary key(Id),
)

Create proc Sp_AgregarTipoUsuario 
@descripcion varchar(50)
	as
		begin
		insert into TipoUsuario (Descripcion) values (@descripcion)
		end

Create proc Sp_BorrarTIpoUsuario 
@id int
	as
		begin
		delete from TipoUsuario where Id = @id
		end

insert into TipoUsuario values ('Administrador'),('General')
select * from TipoUsuario

Create table TipoTransaccion
(
Id int identity(1,1),
Descripcion varchar(50)not null,
TipoContable varchar(20),
constraint PK_IdTipoTransaccion primary key(Id),
)

insert into TipoTransaccion values ('Ingreso','Debe'),('Gasto','Haber')
select * from TipoTransaccion

Create table Usuario
(
	Email varchar(30),
	IdUsuario int,
	TipoUsuario int,
	Clave varchar(30),
	Constraint PK_EmailUsuario primary key (Email),
	Constraint FK_IdUsuario foreign key (IdUsuario) references Persona (Id),
	Constraint FK_TipoUsuario foreign key (TipoUsuario) references TipoUsuario(Id),
)

select * from Usuario
select * from TipoUsuario

Create proc SP_Registro 
@nombre varchar(50),
@cedula varchar(20),
@apellido1 varchar(50),
@apellido2 varchar(50),
@direccion varchar (100),
@telefono varchar(20),
@email varchar (30),
@tipousuario int,
@clave varchar(30)

as
	begin 
		insert into Persona (Cedula,Nombre,Apellido1,Apellido2,Direccion,Telefono)
		values (@cedula,@nombre,@apellido1,@apellido2,@direccion,@telefono)
		insert into Usuario (Email, IdUsuario, TipoUsuario, Clave)
		select @email, Id, @tipousuario, @clave from Persona where Cedula = @cedula
	end





Create proc Sp_AgregarUsuario 
@email varchar(30),
@idusuario int,
@tipousuario int,
@clave varchar(30)
	as
		begin 
		insert into Usuario(Email, IdUsuario, TipoUsuario, Clave)
		values (@email,@idusuario,@tipousuario,@clave)
		end



Create proc Sp_ActualizarUs 
@idusuario int,
@tipousuario int,
@clave varchar(30)
	as
		begin 
		update Usuario set TipoUsuario = @tipousuario, Clave = @clave where IdUsuario = @idusuario
		end

Create proc Sp_BorrarUsuario 
@idusuario int
	as
		begin 
		delete from Usuario where IdUsuario = @idusuario
		end

Create proc Sp_ConsultarUsuario
@idusuario int
	as
		begin 
		select * from Usuario where IdUsuario = @idusuario
		end

		select * from Usuario

Create table Transaccion
(
	Id int identity(1,1),
	IdTipoTransaccion int,
	Email varchar (30),
	Descripcion varchar(50),
	Monto money,
	Fecha datetime,
	Constraint PK_IdTransaccion primary key(Id),
	Constraint FK_IdTipoTransaccion foreign key (IdTipoTransaccion) references TipoTransaccion (Id),
	Constraint FK_IdEmail foreign key (Email) references Usuario(Email),
)

Create proc Sp_AgregarTransaccion
@idtipotransaccion int,
@email varchar (30),
@descripcion varchar (50),
@monto money,
@fecha datetime
	as
		begin 
		insert into Transaccion (IdTipoTransaccion, Email, Descripcion, Monto,Fecha)
		values (@idtipotransaccion,@email,@descripcion,@monto,@fecha)
		end

Create proc Sp_ActualizarTransaccion
@idtipotransaccion int,
@email varchar (30),
@descripcion varchar (50),
@monto money,
@fecha datetime
	as
		begin 
		update Transaccion set Email = @email, Descripcion = @descripcion, Monto = @monto, Fecha = @fecha where IdTipoTransaccion = @idtipotransaccion
		end

Create proc Sp_ActualizarTransacc 
@id int,
@idtipotransaccion int,
@descripcion varchar (50),
@monto money,
@fecha datetime
	as
		begin 
		update Transaccion set IdTipoTransaccion = @idtipotransaccion, Descripcion = @descripcion, Monto = @monto, Fecha = @fecha where Id = @id
		end



Create proc Sp_BorrarTransacc 
@id int
	as
		begin 
		delete from Transaccion where Id = @id
		end

Create proc Sp_ConsultarTransa 
@id int
	as
		begin 
		select * from Transaccion where Id = @id
		end

Create table Auditoria_Transacc
(
Id int,
IdTipoTransaccion int,
Registro varchar(10),
Email varchar (30),
Descripcion varchar(50),
Monto money,
Fecha datetime,
)



Create proc SP_MostrarAud 

as
		begin 
		select * from Auditoria_Transacc
		end

Create trigger Auditoria_Transacc_Tr 
on Transaccion

	After Insert, Delete

		as
			begin	
			insert into Auditoria_Transacc (Id,IdTipoTransaccion,Registro,Email,Descripcion,Monto, fecha)
			select i.Id, i.IdTipoTransaccion, 'Ingreso', i.Email, i.Descripcion,i.Monto, Getdate() from inserted i
			union all
			select d.Id, d.IdTipoTransaccion,'Borrado', d.Email, d.Descripcion, d.Monto, Getdate() from deleted d
			end

Create proc ConsultaFiltro 
@tipotransaccion int,
@usuario varchar(50),
@mes int
as
	begin
	select sum(Monto) as total from Transaccion
	where IdTipoTransaccion = @tipotransaccion and Email = @usuario and Month(Fecha) = @mes
	end