-- =============================================================================
-- Diagram Name: Transcoma
-- Created on: 13/10/2018 1:12:31 a. m.
-- Diagram Version: 
-- =============================================================================


CREATE TABLE ADMINISTRADOR (
	_id SERIAL,
	_nombre varchar(25) NOT NULL,
	_nombreUsuario varchar(25) NOT NULL,
	_correo varchar(30),
	_password varchar(10),
	_fechaRegistro date,
	PRIMARY KEY(_id)
);

CREATE TABLE CLIENTE (
	_id SERIAL,
	_nombre varchar(250) NOT NULL,
	_nombreUsuario varchar(25) NOT NULL,
	_correo varchar(50),
	_password varchar(10),
	_fechaRegistro date,
	_fkAdminCliente int4,
	PRIMARY KEY(_id)
);

CREATE TABLE ALMACEN (
	_id SERIAL,
	_nombreAlmacen varchar(100) NOT NULL,
	_direccion varchar(200) NOT NULL,
	_fkAduanaAlmacen int4,
	PRIMARY KEY(_id)
);

CREATE TABLE ENTRADA (
	_id SERIAL,
	_fechaEntrada date NOT NULL,
	_fkAlmacenEntrada int4,
	PRIMARY KEY(_id)
);

CREATE TABLE SALIDA (
	_id SERIAL,
	_fechaSalida date NOT NULL,
	_fkAlmacenSalida int4,
	PRIMARY KEY(_id)
);

CREATE TABLE PEDIDO (
	_id SERIAL,
	_fechaSolicitud date NOT NULL,
	_fechaEntrega date,
	_estadoPedido varchar,
	_destinatario varchar,
	_fkAlmacenPedido int4,
	PRIMARY KEY(_id)
);

CREATE TABLE PRODUCTO (
    _id SERIAL,
	_descripcion varchar(250),
	_lote varchar(50),
	_estadoCalidad varchar(100),
	_disponible bool NOT NULL,
	_fkEntradaProducto int4,
	_fkSalidaProducto int4,
	_fkPedidoProducto int4,
	_fkClienteProducto int4,
    _fkContainerProducto int4,
	PRIMARY KEY(_id)
);

CREATE TABLE ADUANA (
	_id SERIAL,
	_codigo varchar(10) NOT NULL,
	_nombre varchar(50) NOT NULL,	
	PRIMARY KEY(_id)
);

CREATE TABLE PUERTO (
	_id SERIAL,
    _codigo varchar(10) NOT NULL,
    _nombre varchar(100) NOT NULL,
    _fkDireccion int4,
    PRIMARY KEY(_id)
);

CREATE TABLE DIRECCION (
	_id SERIAL,
    _codigoZip varchar(10) NOT NULL,
    _ciudad varchar(100) NOT NULL,
    _provincia varchar(100) NOT NULL,
    _estado varchar(100) NOT NULL,
    _fkPais int4,
    PRIMARY KEY(_id)
);

CREATE TABLE PAIS (
	_id SERIAL,
    _nombre varchar(100) NOT NULL,
    PRIMARY KEY(_id)
);

CREATE TABLE SHIPPER (
	_id SERIAL,
    _nombre varchar(10) NOT NULL,
    _empresa varchar(100),
    _nif varchar(10) NOT NULL,
    PRIMARY KEY(_id)
);


CREATE TABLE TIPO_CONTAINER (
	_id SERIAL,
    _nombre varchar(10) NOT NULL,
    _tarifa varchar(100),
    _dimension varchar(10) NOT NULL,
    _alto int4,
    _ancho int4,
    _profundidad int4,
    PRIMARY KEY(_id)
);

CREATE TABLE CONTAINER (
	_id SERIAL,
    _peso int4,
    _dimPeso varchar(10),
    _volumen int4,
    _dimVolum varchar(10),
    _numBultos int4,
    _fkTipoContainer int4,
    _fkCotizacion int4,
    PRIMARY KEY(_id)
);

CREATE TABLE COTIZACION (
	_id SERIAL,
    _flete float8,
    _recargo float8,
    _gastosAdmin float8,
    _fechaSalida varchar(15),
    _duracion float8,
    _total float8,
    PRIMARY KEY(_id)
);

CREATE TABLE INCOTERM (
	_id SERIAL,
    _nombre varchar(20) NOT NULL,
    _tarifa float8,
    PRIMARY KEY(_id)
);

CREATE TABLE BL (
	_id SERIAL,
    _notifyParty VARCHAR(50) Not null,
    _lugarRecepcion VARCHAR(100) Not null,
    _buqueOceno VARCHAR(50) not null,
    _fkPol int4,
    _fkPod int4,
    _lugarEntrega VARCHAR(50) not null,
    _fletePagoEn VARCHAR(30) not null,
    _numPaquetes int4,
    _descripcion VARCHAR(100),
    _pesoCarga float8,
  	_volumen VARCHAR(10),
    _fkCotizacion int4,
    _fkIncoterm int4,
    _fkCliente int4,
    PRIMARY KEY(_id)
);

ALTER TABLE BL ADD CONSTRAINT Ref_Cliente_to_Bl FOREIGN KEY (_fkCliente)
	REFERENCES Cliente(_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PUERTO ADD CONSTRAINT Ref_Direccion_to_Puerto FOREIGN KEY (_fkDireccion)
	REFERENCES Direccion(_id) ON DELETE CASCADE ON UPDATE CASCADE;
    
ALTER TABLE DIRECCION ADD CONSTRAINT Ref_Pais_to_Direccion FOREIGN KEY (_fkPais)
	REFERENCES PAIS(_id) ON DELETE CASCADE ON UPDATE CASCADE;
    
ALTER TABLE CONTAINER ADD CONSTRAINT Ref_TipoContainer_to_Container FOREIGN KEY (_fkTipoContainer)
	REFERENCES TIPO_CONTAINER(_id) ON DELETE CASCADE ON UPDATE CASCADE;    

ALTER TABLE CONTAINER ADD CONSTRAINT Ref_Cotizacion_to_Container FOREIGN KEY (_fkCotizacion)
	REFERENCES PAIS(_id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE BL ADD CONSTRAINT Ref_Puerto_to_BL FOREIGN KEY (_fkPol)
	REFERENCES PUERTO(_id) ON DELETE CASCADE ON UPDATE CASCADE;    

ALTER TABLE BL ADD CONSTRAINT Ref_PuertoD_to_BL FOREIGN KEY (_fkPod)
	REFERENCES PUERTO(_id) ON DELETE CASCADE ON UPDATE CASCADE;  

ALTER TABLE BL ADD CONSTRAINT Ref_Cotizacion_to_BL FOREIGN KEY (_fkCotizacion)
	REFERENCES COTIZACION(_id) ON DELETE CASCADE ON UPDATE CASCADE;  

ALTER TABLE BL ADD CONSTRAINT Ref_Incoterm_to_BL FOREIGN KEY (_fkIncoterm)
	REFERENCES INCOTERM(_id) ON DELETE CASCADE ON UPDATE CASCADE; 
    

ALTER TABLE CLIENTE ADD CONSTRAINT Ref_Cliente_to_Administrador FOREIGN KEY (_fkAdminCliente)
	REFERENCES ADMINISTRADOR(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE ALMACEN ADD CONSTRAINT Ref_Almacen_to_Aduana FOREIGN KEY (_fkAduanaAlmacen)
	REFERENCES ADUANA(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE ENTRADA ADD CONSTRAINT Ref_Entrada_to_Almacen FOREIGN KEY (_fkAlmacenEntrada)
	REFERENCES ALMACEN(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE SALIDA ADD CONSTRAINT Ref_Salida_to_Almacen FOREIGN KEY (_fkAlmacenSalida)
	REFERENCES ALMACEN(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PEDIDO ADD CONSTRAINT Ref_Pedido_to_Almacen FOREIGN KEY (_fkAlmacenPedido)
	REFERENCES ALMACEN(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PRODUCTO ADD CONSTRAINT Ref_Producto_to_Entrada FOREIGN KEY (_fkEntradaProducto)
	REFERENCES ENTRADA(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PRODUCTO ADD CONSTRAINT Ref_Producto_to_Salida FOREIGN KEY (_fkSalidaProducto)
	REFERENCES SALIDA(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PRODUCTO ADD CONSTRAINT Ref_Producto_to_Pedido FOREIGN KEY (_fkPedidoProducto)
	REFERENCES PEDIDO(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PRODUCTO ADD CONSTRAINT Ref_Producto_to_Cliente FOREIGN KEY (_fkClienteProducto)
	REFERENCES CLIENTE(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;

ALTER TABLE PRODUCTO ADD CONSTRAINT Ref_Producto_to_Container FOREIGN KEY (_fkContainerProducto)
	REFERENCES CONTAINER(_id)
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT DEFERRABLE;