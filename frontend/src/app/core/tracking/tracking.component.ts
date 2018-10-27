import { Component, OnInit, ViewChild, ViewEncapsulation} from '@angular/core';
import { MatPaginator, MatTableDataSource } from '@angular/material';

@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.css']
})
export class TrackingComponent implements OnInit {

  constructor() { }

  displayedColumnsEntrada: string[] = ['codClienteEntrada', 'fechaEntrada', 'codProducto',
  'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourceEntrada = new MatTableDataSource<EntradaElements>(ENTRADA_DATA);
  
  displayedColumnsSalida: string[] = ['codClienteSalida', 'fechaSalida', 'codProducto',
    'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourceSalida = new MatTableDataSource<SalidaElements>(SALIDA_DATA);

  displayedColumnsPedido: string[] = ['codClientePedido', 'fechaSolicitud', 'fechaEntrega',
    'estadoPedido', 'destinatario', 'codProducto', 'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourcePedido = new MatTableDataSource<PedidoElements>(PEDIDO_DATA);

  rolesList = ROL_DATA;

  @ViewChild(MatPaginator) paginatorEntrada: MatPaginator;
  @ViewChild(MatPaginator) paginatorSalida: MatPaginator;
  @ViewChild(MatPaginator) paginatorPedido: MatPaginator;

  ngOnInit() {
    this.dataSourceEntrada.paginator = this.paginatorEntrada;
    this.dataSourceSalida.paginator = this.paginatorSalida;
    this.dataSourcePedido.paginator = this.paginatorPedido;
  }

  applyFilter(filterValue: string) {
    this.dataSourceEntrada.filter = filterValue.trim().toLowerCase();
  }
}

export interface  EntradaElements {
  codClienteEntrada: number;
  fechaEntrada: string;
  codProducto: number;
  descripcion: string;
  lote: string;
  estadoCalidad: string;
  disponible: string;
  codAlmacen: number;
  nombreAlmacen: string;
  direccionAlmacen: string;
}

export interface SalidaElements {
  codClienteSalida: number;
  fechaSalida: string;
  codProducto: number;
  descripcion: string;
  lote: string;
  estadoCalidad: string;
  disponible: string;
  codAlmacen: number;
  nombreAlmacen: string;
  direccionAlmacen: string;
}

export interface PedidoElements {
  codClientePedido: number;
  fechaSolicitud: string;
  fechaEntrega: string;
  estadoPedido: string;
  destinatario: string;
  codProducto: number;
  descripcion: string;
  lote: string;
  estadoCalidad: string;
  disponible: string;
  codAlmacen: number;
  nombreAlmacen: string;
  direccionAlmacen: string;
}

const ROL_DATA: String[] = [
   'Administrador',
   'Cliente'
];

const ENTRADA_DATA: EntradaElements[] = [
  { codClienteEntrada: 29 ,fechaEntrada:'06/07/2018' ,codProducto:3133 ,descripcion: 'BIDÓN DE ACERO' ,lote: 'TPP1633' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT' },
  { codClienteEntrada: 29 ,fechaEntrada:'17/12/2017' ,codProducto:3134 ,descripcion: 'TONEL DE MADERA' ,lote: 'TPP2865' ,estadoCalidad:'NUEVO DESARMADO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'09/05/2018' ,codProducto:3135 ,descripcion: 'CAJA DE MADERA RECONSTITUIDA' ,lote: 'TPP8647' ,estadoCalidad:'DESARMADO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'12/05/2018' ,codProducto:3136 ,descripcion: 'CUBA LATA' ,lote: 'TPP6662' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'07/03/2018' ,codProducto:3137 ,descripcion: 'JAULA DESLIZANTE' ,lote: 'TPP9567' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'30/11/2017' ,codProducto:3138 ,descripcion: 'LATA, CILÍNDRICA' ,lote: 'TPP4026' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'16/12/2017' ,codProducto:3139 ,descripcion: 'CAJA, CON BASE DE PALETA' ,lote: 'TPP7866' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'16/07/2018' ,codProducto:3140 ,descripcion: 'EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN' ,lote: 'TPP6200' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'14/10/2017' ,codProducto:3141 ,descripcion: 'PALETA, MODULAR, AROS DE 80 X 100 CM' ,lote: 'TPP7232' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'28/09/2018' ,codProducto:3142 ,descripcion: 'RECIPIENTE, DE PLÁSTICO' ,lote: 'TPP0254' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'18/10/2017' ,codProducto:3143 ,descripcion: 'CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO' ,lote: 'TPP234X' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'19/11/2017' ,codProducto:3144 ,descripcion: 'TANQUE CONTENEDOR GENÉRICO' ,lote: 'TPP4122' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 , nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'03/06/2018' ,codProducto:3145 ,descripcion: 'PALETA DE CARTÓN ONDULADO' ,lote: 'TPP2313' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'26/09/2018' ,codProducto:3146 ,descripcion: 'VINILO S/POLVO AQL 1.5 SANTEX T' ,lote: 'TPP1644' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'09/09/2018' ,codProducto:3147 ,descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO' ,lote: 'TPP5665' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'22/11/2017' ,codProducto:3148 ,descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO' ,lote: 'TPP6702' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'15/05/2018' ,codProducto:3149 ,descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO' ,lote: 'TPP320X' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'04/07/2018' ,codProducto:3150 ,descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO' ,lote: 'TPP6742' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'06/02/2018' ,codProducto:3151 ,descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO' ,lote: 'TPP0386' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
  { codClienteEntrada: 29 ,fechaEntrada:'15/10/2017' ,codProducto:3152 ,descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO' ,lote: 'TPP0760' ,estadoCalidad:'NUEVO' ,disponible:'si' ,codAlmacen: 4 ,nombreAlmacen:'HOSPITALET DE LLOBREGAT'},
];

const SALIDA_DATA: SalidaElements[] = [
  { codClienteSalida: 29, fechaSalida: '06/07/2018', codProducto: 3133, descripcion: 'BIDÓN DE ACERO', lote: 'TPP1633', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '17/12/2017', codProducto: 3134, descripcion: 'TONEL DE MADERA', lote: 'TPP2865', estadoCalidad: 'NUEVO DESARMADO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '09/05/2018', codProducto: 3135, descripcion: 'CAJA DE MADERA RECONSTITUIDA', lote: 'TPP8647', estadoCalidad: 'DESARMADO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '12/05/2018', codProducto: 3136, descripcion: 'CUBA LATA', lote: 'TPP6662', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '07/03/2018', codProducto: 3137, descripcion: 'JAULA DESLIZANTE', lote: 'TPP9567', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '30/11/2017', codProducto: 3138, descripcion: 'LATA, CILÍNDRICA', lote: 'TPP4026', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '16/12/2017', codProducto: 3139, descripcion: 'CAJA, CON BASE DE PALETA', lote: 'TPP7866', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '16/07/2018', codProducto: 3140, descripcion: 'EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN', lote: 'TPP6200', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '14/10/2017', codProducto: 3141, descripcion: 'PALETA, MODULAR, AROS DE 80 X 100 CM', lote: 'TPP7232', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '28/09/2018', codProducto: 3142, descripcion: 'RECIPIENTE, DE PLÁSTICO', lote: 'TPP0254', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '18/10/2017', codProducto: 3143, descripcion: 'CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO', lote: 'TPP234X', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '19/11/2017', codProducto: 3144, descripcion: 'TANQUE CONTENEDOR GENÉRICO', lote: 'TPP4122', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '03/06/2018', codProducto: 3145, descripcion: 'PALETA DE CARTÓN ONDULADO', lote: 'TPP2313', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '26/09/2018', codProducto: 3146, descripcion: 'VINILO S/POLVO AQL 1.5 SANTEX T', lote: 'TPP1644', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '09/09/2018', codProducto: 3147, descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO', lote: 'TPP5665', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '22/11/2017', codProducto: 3148, descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO', lote: 'TPP6702', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '15/05/2018', codProducto: 3149, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO', lote: 'TPP320X', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '04/07/2018', codProducto: 3150, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO', lote: 'TPP6742', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '06/02/2018', codProducto: 3151, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO', lote: 'TPP0386', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  { codClienteSalida: 29, fechaSalida: '15/10/2017', codProducto: 3152, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO', lote: 'TPP0760', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
];

const PEDIDO_DATA: PedidoElements[] = [
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '06/07/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202341, descripcion: 'BIDÓN DE ACERO', lote: 'TPP1633', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '17/12/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202342, descripcion: 'TONEL DE MADERA', lote: 'TPP2865', estadoCalidad: 'NUEVO DESARMADO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '09/05/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202343, descripcion: 'CAJA DE MADERA RECONSTITUIDA', lote: 'TPP8647', estadoCalidad: 'DESARMADO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '12/05/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202344, descripcion: 'CUBA LATA', lote: 'TPP6662', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '07/03/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202345, descripcion: 'JAULA DESLIZANTE', lote: 'TPP9567', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '30/11/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202346, descripcion: 'LATA, CILÍNDRICA', lote: 'TPP4026', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '16/12/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202347, descripcion: 'CAJA, CON BASE DE PALETA', lote: 'TPP7866', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '16/07/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202348, descripcion: 'EMBALAJE, DE CARTÓN, CON ORIFICIOS DE PRENSIÓN', lote: 'TPP6200', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '14/10/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202349, descripcion: 'PALETA, MODULAR, AROS DE 80 X 100 CM', lote: 'TPP7232', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '28/09/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202350, descripcion: 'RECIPIENTE, DE PLÁSTICO', lote: 'TPP0254', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '18/10/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202351, descripcion: 'CAJA, DE MADERA, DE PANELES ESTANCOS AL POLVO', lote: 'TPP234X', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '19/11/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202352, descripcion: 'TANQUE CONTENEDOR GENÉRICO', lote: 'TPP4122', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '03/06/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202353, descripcion: 'PALETA DE CARTÓN ONDULADO', lote: 'TPP2313', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '26/09/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202354, descripcion: 'VINILO S/POLVO AQL 1.5 SANTEX T', lote: 'TPP1644', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '09/09/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202355, descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON FORRO', lote: 'TPP5665', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '22/11/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202356, descripcion: 'RECIPIENTE INTERMEDIO PARA GRANELES, DE TELA, CON REVESTIMIENTO INTERIOR Y FORRO', lote: 'TPP6702', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '15/05/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202357, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE ALUMINIO', lote: 'TPP320X', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '04/07/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202358, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE PLÁSTICO, CON CAJA EXTERIOR DE PLÁSTICO RÍGIDO', lote: 'TPP6742', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '06/02/2018', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202359, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CONestadoCalidad CAJA EcounterXTERIOR DE AcounterLUMINIO', lote: 'TPP0386', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
  {codClientePedido: 29, fechaSolicitud: '28/01/2018', fechaEntrega: '15/10/2017', estadoPedido: 'NUEVO' ,destinatario:'A CORUÑA - C/ COPÉRNICO Nº6 (POL. IND. DE LA GRELA) EDIFICIO BCA 28. OFICINA: -1.1', codProducto: 202360, descripcion: 'EMBALAJE COMPUESTO, RECIPIENTE DE VIDRIO, CON EMBALAJE EXTERIOR DE PLÁSTICO RÍGIDO', lote: 'TPP0760', estadoCalidad: 'NUEVO', disponible: 'si', codAlmacen: 4, nombreAlmacen: 'HOSPITALET DE LLOBREGAT' },
];
