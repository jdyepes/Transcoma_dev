----------------------  SP PARA DATOS DE MUESTRA PARA USO DENTRO DE PSQL -------------------------------

-------------- PRODUCTO Y PEDIDO
------------------------------------- Insercion de los Productos ---------------------------------
CREATE OR REPLACE FUNCTION agregarProductoEntrada (estadoCalidad varchar)
RETURNS VOID AS $$
BEGIN
   FOR counter IN 1..45 LOOP
		-- <DISPONIBLES>--
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,true,counter,null ,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,true, counter,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,true,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,true,counter ,null,null,counter);

		--< no DISPONIBLES>---
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,false,counter,null ,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,false, counter,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,false,counter ,null,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,false,counter ,null,null,counter);


   END LOOP;
END; 
$$ LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION agregarProductoSalida (estadoCalidad varchar)
RETURNS VOID AS $$
BEGIN
   FOR counter IN 1..45 LOOP
		---- salidas disponibles ---------
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,true,null,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,false, null,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,true,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,true,null ,counter,null,counter);

		---- NO DISPONIBLES -----------
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,false,null,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,true,null,counter ,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,false, null,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,false,null ,counter,null,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,false,null ,counter,null,counter);

   END LOOP;
   
END; 
$$ LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION agregarProductoPedido (estadoCalidad varchar)
RETURNS VOID AS $$
BEGIN
    FOR counter IN 1..45 LOOP
	   -----------------   pedidos disponibles--------------------
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,true, null,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,true,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,true,null ,null,counter,counter);

		------ pedidos no disponibles  
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN DE ACERO','TPP1633',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TONEL DE MADERA','TPP2865',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA DE MADERA RECONSTITUIDA','TPP8647',estadoCalidad ,false,null,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CUBA LATA','TPP6662',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('JAULA DESLIZANTE','TPP9567',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATA, CILÍNDRICA','TPP4026',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA','TPP7866',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN','TPP6200',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, MODULAR, AROS DE 80 X 100 CM','TPP7232',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE, DE PLÁSTICO','TPP0254',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO','TPP234X',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('TANQUE CONTENEDOR GENÉRICO','TPP4122',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA DE CARTÓN ONDULADO','TPP2313',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('VINILO S/POLVO AQL 1.5 SANTEX T','TPP1644',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO','TPP5665',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO','TPP6702',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO','TPP320X',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO','TPP6742',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO','TPP0386',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO','TPP0760',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES SÓLIDOS, DE PLÁSTICO RÍGIDO, EXENTO','TPP4579',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, DE CARTÓN','TPP1472',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PALETA, FUNDA TERMORRETRÁCTIL','TPP1071',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('NITRILO S/POLVO SANTEX AQL 1.5','TPP749X',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO NITRILEX','TPP7556',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BIDÓN, TAMBOR','TPP1630',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE UN NIVEL, SIN TAPA','TPP6834',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE PLÁSTICO, DE DOS NIVELES, SIN TAPA','TPP1018',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BANDEJA, DE MADERA, DE DOS NIVELES, SIN TAPA','TPP5161',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SACO, DE PLÁSTICO','TPP2174',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOMBONA DE GAS','TPP4558',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE, TUBULAR','TPP4223',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('BOLSA DE HOJAS SUPERPUESTAS','TPP4744',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE PLÁSTICO EXPANDIDO','TPP0526',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('LATEX C/POLVO FLASH AQL TM / TINA(«TUB»)','TPP7513',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJÓN DE TÉ','TPP7806',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE MADERA','TPP5286',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO CON CESTO EXTERIOR DE MIMBRE','TPP6389',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE PLÁSTICO RÍGIDO, EXENTO, PRESURIZADO','TPP9615',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES LÍQUIDOS, DE MATERIAL COMPUESTO, CON RECIPIENTE INTERIOR DE PLÁSTICO RÍGIDO','TPP1780',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE METAL DISTINTO DEL ACERO','TPP563X',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('COFRE («COFFER»)','TPP563X',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, CON BASE DE PALETA, DE CARTÓN','TPP3941',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('ENVASE PARA ALIMENTOS («FOODTAINER»)','TPP6196',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CESTO, CON ASA, DE CARTÓN','TPP9683', estadoCalidad,false, null,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('CAJA, DE MADERA, ORDINARIA','TPP6596',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('PINTURA ACRILICA DUPONT FULL DESIGN','TPP0309',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('SÓLIDO A GRANEL, PARTÍCULAS GRANULARES (GRANOS)','TPP9559',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('RECIPIENTE INTERMEDIO PARA GRANELES, DE CONTRACHAPADO, CON FORRO','TPP9381',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE CARTÓN','TPP9114',estadoCalidad ,false,null ,null,counter,counter);
		insert into "PRODUCTO" ("_descripcion","_lote","_estadoCalidad","_disponible","_fkEntradaProducto","_fkSalidaProducto","_fkPedidoProducto","_fkClienteProducto") 
		values ('EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON BIDÓN EXTERIOR DE PLÁSTICO','TPP6991',estadoCalidad ,false,null ,null,counter,counter);

	END LOOP;
   
END; 
$$ LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION agregarPedido (estadoPedido varchar ,destinatario varchar)
RETURNS VOID AS $$
BEGIN
    FOR counter IN 1..21 LOOP
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '21/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('29/10/2017', '06/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/01/2018', '09/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '04/05/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('19/08/2018', '01/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/08/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '20/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/11/2017', '22/03/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/12/2017', '21/01/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/07/2018', '14/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/02/2018', '06/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/06/2018', '08/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('06/06/2018', '06/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/04/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/06/2018', '28/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/01/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/01/2018', '08/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/04/2018', '24/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/06/2018', '07/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('06/02/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/06/2018', '09/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '15/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/06/2018', '24/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/03/2018', '19/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/06/2018', '31/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/01/2018', '10/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/06/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/02/2018', '11/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/02/2018', '08/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/06/2018', '09/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/06/2018', '23/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/05/2018', '07/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('08/04/2018', '25/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '27/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/05/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/05/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '30/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '18/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '03/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/04/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/02/2018', '12/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/02/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/01/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/06/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/06/2018', '27/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '24/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/04/2018', '03/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/02/2018', '22/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/04/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '08/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/01/2018', '27/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/06/2018', '31/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/03/2018', '28/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/06/2018', '04/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/03/2018', '01/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/05/2018', '23/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/01/2018', '29/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/05/2018', '01/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/03/2018', '09/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/03/2018', '19/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('29/01/2018', '09/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('05/06/2018', '06/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/04/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('08/04/2018', '25/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/03/2018', '28/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/03/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/05/2018', '13/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/06/2018', '02/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('05/03/2018', '15/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/01/2018', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/01/2018', '07/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('05/02/2018', '27/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('19/06/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/04/2018', '09/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/04/2018', '23/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/04/2018', '08/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('03/06/2018', '30/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/04/2018', '16/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/05/2018', '28/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/03/2018', '08/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/03/2018', '29/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('05/04/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/03/2018', '13/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/02/2018', '11/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/03/2018', '29/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/04/2018', '11/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/03/2018', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('03/05/2018', '09/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/05/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('08/02/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('19/01/2018', '11/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('29/01/2018', '15/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('19/05/2018', '29/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/01/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('06/06/2018', '19/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/02/2018', '11/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('27/05/2018', '26/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/04/2018', '12/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('13/01/2018', '16/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/03/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/01/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('09/03/2018', '11/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/05/2018', '21/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/04/2018', '10/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('24/04/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/02/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/06/2018', '26/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/11/2017', '25/06/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('07/10/2018', '26/02/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '15/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('30/09/2018', '20/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/05/2018', '25/04/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/11/2017', '08/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', '22/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/09/2018', null, estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/06/2018', '07/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/06/2018', '07/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('06/02/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/06/2018', '09/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '15/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/06/2018', '24/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/03/2018', '19/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/06/2018', '31/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/01/2018', '10/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/06/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/02/2018', '11/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/02/2018', '08/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/06/2018', '09/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/06/2018', '23/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/05/2018', '07/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('08/04/2018', '25/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '27/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/05/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/05/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '30/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '18/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '03/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/04/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/02/2018', '12/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/02/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/01/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/06/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/06/2018', '27/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '24/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('01/04/2018', '03/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/02/2018', '22/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/04/2018', '24/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/06/2018', '07/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('06/02/2018', '28/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('28/06/2018', '09/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/04/2018', '15/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('02/06/2018', '24/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/03/2018', '19/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('22/06/2018', '31/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/01/2018', '10/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/06/2018', '10/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('21/02/2018', '11/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('17/02/2018', '08/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/06/2018', '09/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('14/06/2018', '23/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('12/05/2018', '07/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('08/04/2018', '25/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('18/01/2018', '27/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('11/05/2018', '20/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('04/05/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '30/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '18/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('25/03/2018', '03/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('15/04/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('26/02/2018', '12/10/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/02/2018', '04/07/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('20/01/2018', '21/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('16/06/2018', '02/08/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('23/06/2018', '27/09/2018', estadoPedido,destinatario,counter);
		insert into "PEDIDO" ("_fechaSolicitud", "_fechaEntrega","_estadoPedido","_destinatario","_fkAlmacenPedido") values ('10/01/2018', '24/07/2018', estadoPedido,destinatario,counter);	
	END LOOP;
END; 
$$ LANGUAGE plpgsql;

------------------- Ejecucion de los SP ----------------------------------------
------------------- REGISTRO DE LOS ESTADOS DE LOS PRODUCTOS DE CADA OPERACION ----------

SELECT * FROM agregarProductoEntrada('NUEVO');
SELECT * FROM agregarProductoEntrada('NUEVO ARMADO');
SELECT * FROM agregarProductoEntrada('NUEVO DESARMADO');
SELECT * FROM agregarProductoEntrada('NUEVO SEMIDESARMADO');
SELECT * FROM agregarProductoEntrada('NUEVO SEMIARMADO');
SELECT * FROM agregarProductoEntrada('NUEVO SINIESTRADO');
SELECT * FROM agregarProductoEntrada('NUEVO AVERIADO');
SELECT * FROM agregarProductoEntrada('NUEVO RECONSTRUIDO');
SELECT * FROM agregarProductoEntrada('USADO');
SELECT * FROM agregarProductoEntrada('USADO ARMADO');
SELECT * FROM agregarProductoEntrada('USADO DESARMADO');
SELECT * FROM agregarProductoEntrada('USADO SEMIDESARMADO');
SELECT * FROM agregarProductoEntrada('USADO SEMIARMADO');
SELECT * FROM agregarProductoEntrada('USADO SINIESTRADO');
SELECT * FROM agregarProductoEntrada('USADO AVERIADO');
SELECT * FROM agregarProductoEntrada('USADO RECONSTRUIDO');
SELECT * FROM agregarProductoEntrada('BUENO');
SELECT * FROM agregarProductoEntrada('INCOMPLETO');
SELECT * FROM agregarProductoEntrada('DETERIORADO');
SELECT * FROM agregarProductoEntrada('SINIESTRADO');
SELECT * FROM agregarProductoEntrada('INSERVIBLE');
SELECT * FROM agregarProductoEntrada('OTRO');

-------------------------------------------------------------
SELECT * FROM agregarProductoSalida('NUEVO');
SELECT * FROM agregarProductoSalida('NUEVO ARMADO');
SELECT * FROM agregarProductoSalida('NUEVO DESARMADO');
SELECT * FROM agregarProductoSalida('NUEVO SEMIDESARMADO');
SELECT * FROM agregarProductoSalida('NUEVO SEMIARMADO');
SELECT * FROM agregarProductoSalida('NUEVO SINIESTRADO');
SELECT * FROM agregarProductoSalida('NUEVO AVERIADO');
SELECT * FROM agregarProductoSalida('NUEVO RECONSTRUIDO');
SELECT * FROM agregarProductoSalida('USADO');
SELECT * FROM agregarProductoSalida('USADO ARMADO');
SELECT * FROM agregarProductoSalida('USADO DESARMADO');
SELECT * FROM agregarProductoSalida('USADO SEMIDESARMADO');
SELECT * FROM agregarProductoSalida('USADO SEMIARMADO');
SELECT * FROM agregarProductoSalida('USADO SINIESTRADO');
SELECT * FROM agregarProductoSalida('USADO AVERIADO');
SELECT * FROM agregarProductoSalida('USADO RECONSTRUIDO');
SELECT * FROM agregarProductoSalida('BUENO');
SELECT * FROM agregarProductoSalida('INCOMPLETO');
SELECT * FROM agregarProductoSalida('DETERIORADO');
SELECT * FROM agregarProductoSalida('SINIESTRADO');
SELECT * FROM agregarProductoSalida('INSERVIBLE');
SELECT * FROM agregarProductoSalida('OTRO');

--------------------------------------------------------------------------------
SELECT * FROM agregarProductoPedido('NUEVO');
SELECT * FROM agregarProductoPedido('NUEVO ARMADO');
SELECT * FROM agregarProductoPedido('NUEVO DESARMADO');
SELECT * FROM agregarProductoPedido('NUEVO SEMIDESARMADO');
SELECT * FROM agregarProductoPedido('NUEVO SEMIARMADO');
SELECT * FROM agregarProductoPedido('NUEVO SINIESTRADO');
SELECT * FROM agregarProductoPedido('NUEVO AVERIADO');
SELECT * FROM agregarProductoPedido('NUEVO RECONSTRUIDO');
SELECT * FROM agregarProductoPedido('USADO');
SELECT * FROM agregarProductoPedido('USADO ARMADO');
SELECT * FROM agregarProductoPedido('USADO DESARMADO');
SELECT * FROM agregarProductoPedido('USADO SEMIDESARMADO');
SELECT * FROM agregarProductoPedido('USADO SEMIARMADO');
SELECT * FROM agregarProductoPedido('USADO SINIESTRADO');
SELECT * FROM agregarProductoPedido('USADO AVERIADO');
SELECT * FROM agregarProductoPedido('USADO RECONSTRUIDO');
SELECT * FROM agregarProductoPedido('BUENO');
SELECT * FROM agregarProductoPedido('INCOMPLETO');
SELECT * FROM agregarProductoPedido('DETERIORADO');
SELECT * FROM agregarProductoPedido('SINIESTRADO');
SELECT * FROM agregarProductoPedido('INSERVIBLE');
SELECT * FROM agregarProductoPedido('OTROS');

-------------------------------- AGREGAR PEDIDO DE MUESTRA ---------
SELECT * FROM agregarPedido('NUEVO','A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1');
SELECT * FROM agregarPedido('NUEVO ARMADO','CÓRDOBA	- CALLE ESCRITOR CONDE ZAMORA S/N');
SELECT * FROM agregarPedido('NUEVO DESARMADO','GIJÓN - AVENIDA DEL LLANO 52');
SELECT * FROM agregarPedido('NUEVO SEMIDESARMADO','LAS PALMAS DE GRAN CANARIA - CALLE IBARRA Y CIA S/N');
SELECT * FROM agregarPedido('NUEVO SEMIARMADO','LAS PALMAS DE GRAN CANARIA	- CALLE ANTONIO Mª MANRIQUE 3');
SELECT * FROM agregarPedido('NUEVO SINIESTRADO','LOS BARRIOS	 - CALLE BERGATÍN 22-24');
SELECT * FROM agregarPedido('NUEVO AVERIADO','MADRID - CALLE SAN ROMUALDO 13');
SELECT * FROM agregarPedido('NUEVO RECONSTRUIDO','MURCIA - AVENIDA CIUDAD DE ARANJUEZ 18');
SELECT * FROM agregarPedido('USADO','MÁLAGA - AVENIDA PINTOR SOROLLA 125 4ºG');
SELECT * FROM agregarPedido('USADO ARMADO','OIARTZUN - POLÍGONO INDUSTRIAL ARANGUREN 6');
SELECT * FROM agregarPedido('USADO DESARMADO','PALMA DE MALLORCA - CALLE GREMI PASSAMANERS 24 2º');
SELECT * FROM agregarPedido('USADO SEMIDESARMADO','PAMPLONA - AVENIDA NAVARRA 5');
SELECT * FROM agregarPedido('USADO SEMIARMADO','PATERNA	 - NARCISO MONTURIOL Y ESTARRIOL 17-B');
SELECT * FROM agregarPedido('USADO SINIESTRADO','SANT QUIRZE DEL VALLÈS - CALLE ILLA DE BUDA 55');
SELECT * FROM agregarPedido('USADO AVERIADO','SEVILLA	 - SAN FRANCISCO JAVIER 9');
SELECT * FROM agregarPedido('USADO RECONSTRUIDO','TARRAGONA - LUDWIG VAN BETHOVEN 10B');
SELECT * FROM agregarPedido('BUENO','TRAPAGARÁN - BARRIO DE GALINDO S/N');
SELECT * FROM agregarPedido('INCOMPLETO','VALLADOLID - CALLE PLATA 14');
SELECT * FROM agregarPedido('DETERIORADO','VIGO - CAMIÑO DO CARAMUXO 70');
SELECT * FROM agregarPedido('SINIESTRADO','ZARAGOZA - AVENIDA MANUEL RODRIGUEZ AYUSO, 170');
SELECT * FROM agregarPedido('OTROS','PALMA DE MALLORCA - CALLE GREMI PASSAMANERS 24 2º');

/*----------------------------------------------------------------------------------*/

-- STORED PROCEDURES
 
----------- VER LOS ALMACENES DE UNA ADUANA
CREATE OR REPLACE FUNCTION consultarAlmacenesAduana(_idAduana integer)
RETURNS TABLE
  (nombreAduana varchar, nombreAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
	    SELECT distinct "ADUANA"._nombre as "Aduana", "ALMACEN"."_nombreAlmacen" as "Almacen"
		FROM "ADUANA"
		INNER JOIN "ALMACEN"
		ON "ADUANA"._ID = "ALMACEN"."_fkAduanaAlmacen"
		WHERE "ADUANA"._ID=_idAduana;	
	
END;
$$ LANGUAGE plpgsql;
-------
------- SEGUNDA FORMA DE HACERLO
CREATE OR REPLACE FUNCTION consultarAlmacenesAduana(_idAduana integer)
RETURNS TABLE
  (nombreAduana varchar, nombreAlmacen varchar)
AS $$
DECLARE
   var_r record;
BEGIN
	
	FOR var_r IN(SELECT distinct "ADUANA"._nombre as "Aduana", "ALMACEN"."_nombreAlmacen" as "Almacen"
		FROM "ADUANA"
		INNER JOIN "ALMACEN"
		ON "ADUANA"._ID = "ALMACEN"."_fkAduanaAlmacen"
		WHERE "ADUANA"._ID=_idAduana)	
	LOOP
		nombreAduana = var_r."Aduana";
		nombreAlmacen = var_r."Almacen";
	    RETURN NEXT;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-----------------------------------------------------------------------------------

----------- CONSULTAR LA ADUANA DADO EL ALMACEN -----------------
CREATE OR REPLACE FUNCTION consultarAduana(idAlmacen integer)
RETURNS TABLE
  (idAduanaAlmacen integer, codAduana varchar, nombreAduana varchar, 
   codAlmacen integer, nombreAlmacen varchar, direccionAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
	    SELECT AD._ID ,AD._CODIGO AS "cod_aduana", AD._NOMBRE AS "nombre_aduana",
		AL._ID AS "cod_almacen", AL."_nombreAlmacen" AS "nombre_almacen", AL."_direccion" as "direccion_almacen"
		FROM "ADUANA" AD
		INNER JOIN "ALMACEN" AL ON AL."_fkAduanaAlmacen" = AD._ID
		WHERE AL._ID =idAlmacen;		
END;
$$ LANGUAGE plpgsql;

--------------- CONSULTAR TODAS LAS ADUANAS --------------------
CREATE OR REPLACE FUNCTION consultarTodasAduana()
RETURNS TABLE
  (idAduanaAlmacen integer, codAduana varchar, nombreAduana varchar)
AS $$
BEGIN	
	RETURN QUERY
	   SELECT AD._ID ,AD._CODIGO AS "cod_aduana", AD._NOMBRE AS "nombre_aduana"
	   FROM "ADUANA" AS AD;		
END;
$$ LANGUAGE plpgsql;

-----------------------------------------------------------
--------------- CONSULTAR TDOSS LOS ALMACENES --------------------
CREATE OR REPLACE FUNCTION consultarTodosAlmacenes()
RETURNS TABLE
  (idAlmacen integer, nombreAlmacen varchar, direccion varchar)
AS $$
BEGIN	
	RETURN QUERY
	   SELECT AL._ID AS "cod_almacen", AL."_nombreAlmacen" AS "nombre_almacen", AL._DIRECCION AS "Direccion"
	   FROM "ALMACEN" AS AL;		
END;
$$ LANGUAGE plpgsql;

----------------------------------------------------------------------------------------------

-- VER LOS CLIENTES DE UN ADMINISTRADOR
CREATE OR REPLACE FUNCTION consultarClientesAdministrador(_idAdministrador integer)
RETURNS TABLE
  (codAdministrador integer, nombreAdminstrador varchar,
   codCliente integer, nombreCliente varchar, nombreUsuario varchar, correo varchar, fechaRegistro date)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct ad._ID , ad._NOMBRE,
		cl._ID ,cl._NOMBRE, cl."_nombreUsuario", cl."_correo", cl."_fechaRegistro"
		FROM "ADMINISTRADOR" as ad
		INNER JOIN "CLIENTE" as cl
		ON ad._ID = cl."_fkAdminCliente"
		WHERE ad._ID=_idAdministrador;	
END;
$$ LANGUAGE plpgsql;

------------------------ENTRADAS ------------------------
---------CLIENTE ------------
-- VER LAS ENTRADAS CON DETALLE DE UN CLIENTE EN ESPECIFICO POR SU ID
CREATE OR REPLACE FUNCTION consultarEntradasCliente(idCliente integer)
RETURNS TABLE
  (codClienteEntrada integer, fechaEntrada Date, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, 
   disponible bool, codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct C._ID as "cod_clienteEntrada", E."_fechaEntrada", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "ENTRADA" AS E
		INNER JOIN "PRODUCTO" AS P ON E._ID = P."_fkEntradaProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = E."_fkAlmacenEntrada"
		WHERE C._ID =idCliente
		ORDER BY E."_fechaEntrada";	
END;
$$ LANGUAGE plpgsql;

------- ADMINISTRADOR -----
-- CONSULTA TODAS LAS ENTRADAS
CREATE OR REPLACE FUNCTION consultarTodasEntradas()
RETURNS TABLE
  (codClienteEntrada integer, fechaEntrada Date, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, 
   disponible bool, nombreCliente varchar,correoCliente varchar, codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct C._ID as "cod_clienteEntrada", E."_fechaEntrada", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		C._NOMBRE, C._CORREO,
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "ENTRADA" AS E
		INNER JOIN "PRODUCTO" AS P ON E._ID = P."_fkEntradaProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = E."_fkAlmacenEntrada"
		ORDER BY C._NOMBRE;
	END;
$$ LANGUAGE plpgsql;

------------------------SALIDAS ------------------------
-- CLIENTE ---
-- VER LAS SALIDAS CON DETALLE DE UN CLIENTE EN ESPECIFICO POR SU ID
CREATE OR REPLACE FUNCTION consultarSalidasCliente(idCliente integer)
RETURNS TABLE
  (codClienteSalida integer, fechaSalida Date, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, 
   disponible bool, codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct C._ID as "cod_clienteSalida", S."_fechaSalida", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "SALIDA" AS S
		INNER JOIN "PRODUCTO" AS P ON S._ID = P."_fkSalidaProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = S."_fkAlmacenSalida"
		WHERE C._ID = idCliente
		ORDER BY S."_fechaSalida";	
END;
$$ LANGUAGE plpgsql;

------- ADMINISTRADOR -----
-- CONSULTA TODAS LAS SALIDAS
CREATE OR REPLACE FUNCTION consultarTodasSalidas()
RETURNS TABLE
  (codClienteSalida integer, fechaSalida Date, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, 
   disponible bool, nombreCliente varchar,correoCliente varchar, codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct C._ID as "cod_clienteSalida", S."_fechaSalida", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		C._NOMBRE, C._CORREO,
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "SALIDA" AS S
		INNER JOIN "PRODUCTO" AS P ON S._ID = P."_fkSalidaProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = S."_fkAlmacenSalida"
		ORDER BY C._NOMBRE;
END;
$$ LANGUAGE plpgsql;

------------------------PEDIDOS ------------------------

-- VER LAS PEDIDOS CON DETALLE DE UN CLIENTE EN ESPECIFICO POR SU ID
--CLIENTES---
CREATE OR REPLACE FUNCTION consultarPedidosCliente(idCliente integer)
RETURNS TABLE
  (codClientePedido integer, fechaSolicitud Date, fechaEntrega Date, estadoPedido varchar, 
   destinatario varchar, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, disponible bool,
   codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct PE._ID as "cod_pedido", PE."_fechaSolicitud", PE."_fechaEntrega", PE."_estadoPedido", PE."_destinatario", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "PEDIDO" AS PE
		INNER JOIN "PRODUCTO" AS P ON PE._ID = P."_fkPedidoProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = PE."_fkAlmacenPedido"		
		WHERE C._ID =idCliente
		ORDER BY  PE."_fechaSolicitud";
END;
$$ LANGUAGE plpgsql;

--ADMINISTRADOR --
CREATE OR REPLACE FUNCTION consultarTodosPedidos()
RETURNS TABLE
  (codClientePedido integer, fechaSolicitud Date, fechaEntrega Date, estadoPedido varchar, 
   destinatario varchar, codProducto integer, descripcion varchar, lote varchar, estadoCalidad varchar, disponible bool,
   nombreCliente varchar,correoCliente varchar, codAlmacen integer, nombreAlmacen varchar, dirAlmacen varchar)
AS $$
BEGIN	
	RETURN QUERY
		SELECT distinct PE._ID as "cod_ClientePedido", PE."_fechaSolicitud", PE."_fechaEntrega", PE."_estadoPedido", PE."_destinatario", 
		P._ID as "cod_producto",P._DESCRIPCION, P._LOTE, P."_estadoCalidad" , P._disponible , 
		C._NOMBRE, C._CORREO,
		AL._ID as "cod_almacen", AL."_nombreAlmacen", AL."_direccion" as "DireccionAlmacen"
		FROM "PEDIDO" AS PE
		INNER JOIN "PRODUCTO" AS P ON PE._ID = P."_fkPedidoProducto"
		INNER JOIN "CLIENTE" AS C ON C._ID = P."_fkClienteProducto"
		INNER JOIN "ALMACEN" AS AL ON AL._ID = PE."_fkAlmacenPedido"
		ORDER BY C._NOMBRE;
		END;
$$ LANGUAGE plpgsql;

----------------------------------------------------------------------------------------------
-- DROPS FUNCTION
/*
DROP FUNCTION consultaralmacenesaduana(integer);
DROP FUNCTION consultarentradascliente(integer);
DROP FUNCTION consultarsalidascliente(integer);
DROP FUNCTION consultarPedidosCliente(integer);
DROP FUNCTION consultartodosalmacenes();
DROP FUNCTION consultarclientesadministrador(integer);
*/
-- CONSULTAS Y LLAMADA A LAS FUNCIONES

select * from consultarAlmacenesAduana(2);
select * from consultarAduana(2);
select * from consultarTodasAduana();
select * from consultarTodosAlmacenes();
select * from consultarClientesAdministrador(10);
select * from consultarEntradasCliente(29);
select * from consultarTodasEntradas();
select * from consultarSalidasCliente(10);
select * from consultarTodasSalidas();
select * from consultarPedidosCliente(28);
select * from consultarTodosPedidos();

/*------------------------------*/
-- STORED PROCEDURES -------- <INSERCIONES>

---- Inserciones para usuario con rol Administrador
CREATE OR REPLACE FUNCTION agregarAdministrador (nombre VARCHAR, nombreUsuario VARCHAR, correo VARCHAR, _password VARCHAR)
RETURNS integer AS
$$
DECLARE
   fecha date;
   idUsuario integer;
BEGIN
   fecha =  to_timestamp(to_char(CURRENT_DATE,'DD/MM/YYYY ') || to_char(now(),'hh:mi:ss'),'DD/MM/YYYY HH:MI:SS');   
   INSERT INTO "ADMINISTRADOR" ("_nombre","_nombreUsuario","_correo","_password","_fechaRegistro") 
   VALUES (upper(nombre), upper(nombreUsuario), upper(correo), _password, fecha )RETURNING _id into idUsuario ;
   RETURN idUsuario;
END;
$$ LANGUAGE plpgsql;
----------------------------------------------------------------------------------------------------------
-- Inserciones para usuario con rol Cliente/Compañia
CREATE OR REPLACE FUNCTION agregarCliente (
	nombre VARCHAR, nombreUsuario VARCHAR, correo VARCHAR, _password VARCHAR,_fkAdminCliente INTEGER)
RETURNS integer AS
$$
DECLARE
   fecha date;
   idUsuario integer;
BEGIN
   fecha =  to_timestamp(to_char(CURRENT_DATE,'DD/MM/YYYY ') || to_char(now(),'hh:mi:ss'),'DD/MM/YYYY HH:MI:SS');   
   INSERT INTO "CLIENTE" ("_nombre","_nombreUsuario","_correo","_password","_fechaRegistro", "_fkAdminCliente") 
   VALUES (upper(nombre), upper(nombreUsuario), upper(correo), _password, fecha, _fkAdminCliente )
   RETURNING _id into idUsuario ;
   RETURN idUsuario;
END;
$$ LANGUAGE plpgsql;
-----------------------------------------------------------------------------------------------

------------------- Ejecucion de los SP ----------------------------------------

SELECT agregarAdministrador('wilmer perez', 'wperez', 'wperez@transcoma.com', 'wPerez');
SELECT agregarCliente('GLOBAL TRAVELING SEA SRL', 'GTRAVEL', 'GTRAVEL@transcoma.com', 'GTr4v3L',9);
SELECT * FROM agregarProductoPedido();

---------------------- DROPS DE LAS DUNCIONES------------------------------------------------------
/*
DROP FUNCTION agregaradministrador(character varying,character varying,character varying,character varying);
DROP FUNCTION agregarProductoEntrada();
DROP FUNCTION agregarProductoSalida();
DROP FUNCTION agregarProductoPedido();
*/

--------------------------------SP Consultar BL por Cliente---------------------------------------
CREATE OR REPLACE FUNCTION consultarBlporCliente(idCliente int)
RETURNS TABLE
	(_id int, _notifyparty varchar, _lugarrecepcion varchar, _buqueoceno varchar,
     _fkpol int, _fkpod int, _lugarentrega varchar, _fletepagoen varchar, _numpaquetes int,
    _descripcion varchar, _pesocarga float, _fkcotizacion int, _fkcliente int, _cliente varchar, _volumen int)
AS $$
BEGIN 
	RETURN QUERY 
    	SELECT b._id, b._notifyparty, b._lugarrecepcion, b._buqueoceno,
          	   b._fkpol, b._fkpod, b._lugarentrega, b._fletepagoen, b._numpaquetes,
               b._descripcion, b._pesocarga, b._fkcotizacion, b._fkcliente, c._nombre, b._volumen
        FROM BL as b INNER JOIN Cliente as c ON b._fkcliente = c._id WHERE b._id = idCliente;
END;
$$ LANGUAGE plpgsql;

----------------------------SP Consultar todos los puertos----------------------------------------
CREATE OR REPLACE FUNCTION consultarTodosPuertos()
RETURNS TABLE
	(puertoId int, codigo varchar, nombre varchar, direccionId int, codigozip varchar,
     ciudad varchar, provincia varchar, estado varchar, pais varchar)
AS $$
BEGIN 
	RETURN QUERY 
    	SELECT pu._id, pu._codigo, pu._nombre, dir._id, dir._codigozip, dir._ciudad, dir._provincia, dir._estado, dir._pais FROM PUERTO AS pu  
        INNER JOIN DIRECCION AS dir ON pu._fkdireccion = dir._id;
END;
$$ LANGUAGE plpgsql;

----------------------------SP consultar Puerto por Id--------------------------------------------
CREATE OR REPLACE FUNCTION consultarPuertoporId(idPuerto int)
RETURNS TABLE
	(puertoId int, codigo varchar, nombre varchar, direccionId int, codigozip varchar,
     ciudad varchar, provincia varchar, estado varchar, pais varchar)
AS $$
BEGIN 
	RETURN QUERY 
    	SELECT pu._id, pu._codigo, pu._nombre, dir._id, dir._codigozip, dir._ciudad, dir._provincia, dir._estado, dir._pais FROM PUERTO AS pu  
        INNER JOIN DIRECCION AS dir ON pu._fkdireccion = dir._id WHERE pu._id= idPuerto;
END;
$$ LANGUAGE plpgsql;


