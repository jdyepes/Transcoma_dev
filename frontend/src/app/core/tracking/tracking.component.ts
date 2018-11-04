import { Component, OnInit, ViewChild, Inject, ViewEncapsulation} from '@angular/core';
import { MatPaginator, MatTableDataSource } from '@angular/material';
import { AfterViewInit } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { TrackingModalComponent } from 'src/app/components/tracking-modal/tracking-modal.component';
import { Entrada } from '../../models/Entrada';
import { TrackingService } from '../../shared/Tracking.Service';
import { SelectionModel } from '@angular/cdk/collections';
import { RouterModule, Router, RouterLink } from '@angular/router';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { Producto } from 'src/app/models/Producto';
import { Almacen } from 'src/app/models/Almacen';
import { Cliente } from 'src/app/models/Cliente';
import { Salida } from 'src/app/models/Salida';

export interface EntradaElements {
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
   '-',
   '-'
];

export class EntradaDef {
  fechaEntrada: Date;
  producto: Producto;
  almacen: Almacen;
  cliente: Cliente;
}

export class SalidaDef {
  fechaSalida: Date;
  producto: Producto;
  almacen: Almacen;
  cliente: Cliente;
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

@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.css']
})

export class TrackingComponent implements OnInit, AfterViewInit {

  /*constructor() { }*/

  mostrar = false; // si es admin muestra la lista de clientes
  margen: any = '500px';

  displayedColumnsEntrada: string[] = ['codClienteEntrada', 'fechaEntrada', 'codProducto',
  'descripcion', 'lote', 'estado', 'disponible'];

  dataSourceEntrada: MatTableDataSource<EntradaDef>; // new MatTableDataSource<EntradaElements>(ENTRADA_DATA);

  displayedColumnsSalida: string[] = ['codClienteSalida', 'fechaSalida', 'codProducto',
    'descripcion', 'lote', 'estadoCalidad', 'disponible'];

  dataSourceSalida: MatTableDataSource<SalidaDef>;
/*
  displayedColumnsPedido: string[] = ['codClientePedido', 'fechaSolicitud', 'fechaEntrega',
    'estadoPedido', 'destinatario', 'codProducto', 'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourcePedido = new MatTableDataSource<PedidoElements>(PEDIDO_DATA);
*/
  rolesList = ROL_DATA;

  listEntrada: Entrada[];
  listInterface: EntradaDef[];
  selection = new SelectionModel<EntradaDef>(true, []);
  servicioTracking = new TrackingService(this.http);

  /* Modulo de salida */
  listSalida: Salida[];
  listInterfaceSalida: SalidaDef[];
  selectionSalida = new SelectionModel<SalidaDef>(true, []);



  @ViewChild('paginatorEntrada') paginatorEntrada: MatPaginator;
  @ViewChild('paginatorSalida') paginatorSalida: MatPaginator;
  @ViewChild(MatPaginator) paginatorPedido: MatPaginator;

  // constructor(public dialog: MatDialog) { }
  constructor(public dialog: MatDialog, private router: Router, public http: HttpClient) {
    this.listInterface = new Array<EntradaDef>();
    this.listInterfaceSalida = new Array<SalidaDef>();
  }

  ngOnInit() {
   // this.dataSourceEntrada.paginator = this.paginatorEntrada;
   // this.dataSourceSalida.paginator = this.paginatorSalida;
   // this.dataSourcePedido.paginator = this.paginatorPedido;
    this.initializeTable();
  }

  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSourceEntrada.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSourceEntrada.data.forEach(row => this.selection.select(row));
      this.dataSourceSalida.data.forEach(row => this.selectionSalida.select(row));
  }


  ngAfterViewInit() {
    this.dataSourceEntrada.paginator = this.paginatorEntrada;
    this.dataSourceSalida.paginator = this.paginatorSalida;
  //  this.dataSourcePedido.paginator = this.paginatorPedido;
  }

  applyFilter(filterValue: string) {
    this.dataSourceEntrada.filter = filterValue.trim().toLowerCase();
    this.dataSourceSalida.filter = filterValue.trim().toLowerCase();
   // this.dataSourcePedido.filter = filterValue.trim().toLowerCase();
  }

  _setDataSource(indexNumber) {
    setTimeout(() => {
      switch (indexNumber) {
        case 0:
          !this.dataSourceEntrada.paginator ? this.dataSourceEntrada.paginator = this.paginatorEntrada : null;
          break;
        case 1:
          !this.dataSourceSalida.paginator ? this.dataSourceSalida.paginator = this.paginatorSalida : null;
      }
    });
  }

fillListInterface() {

    this.listEntrada.forEach((object => {

    let _entrada = new EntradaDef();

      _entrada.fechaEntrada = object.$fechaEntrada;
      _entrada.almacen = object.$almacen;
      _entrada.cliente = object.$cliente;
      _entrada.producto = object.$producto;
      this.listInterface.push(_entrada);
  }));

}

  fillListInterfaceSalida() {

    this.listSalida.forEach((object => {
      let _salida = new SalidaDef();

      _salida.fechaSalida = object.$fechaSalida;
      _salida.almacen = object.$almacen;
      _salida.cliente = object.$cliente;
      _salida.producto = object.$producto;
      this.listInterfaceSalida.push(_salida);
    }));
  }

async initializeTable()
 {
  await this.servicioTracking.ObtenerEntradaClientes(2)
    .then(
      res => {
        if (res.error) {
          console.log('en caso de error', res.error);
          alert('Error con el servicio');
        } else {
          this.listEntrada = res;
          this.fillListInterface();
          this.dataSourceEntrada = new MatTableDataSource<EntradaDef>(this.listInterface);
          this.dataSourceEntrada.paginator = this.paginatorEntrada;

        }
      },
      error => {
        console.log(error);
        alert('Error cargando la lista de ');
      }
    );

  await this.servicioTracking.ObtenerSalidaClientes(1)
    .then(
      res => {
        if (res.error) {
          console.log('en caso de error', res.error);
          alert('Error con el servicio');
        } else {
          this.listSalida = res;
          this.fillListInterfaceSalida();
          this.dataSourceSalida = new MatTableDataSource<SalidaDef>(this.listInterfaceSalida);
          this.dataSourceSalida.paginator = this.paginatorSalida;

        }
      },
      error => {
        console.log(error);
        alert('Error cargando la lista de ');
      }
    );

  }

  openDialog(valor: string, entradas: any): void {
    localStorage.setItem('posicion', valor);
    console.log(entradas);
    const dialogRef = this.dialog.open(TrackingModalComponent, {
      data: { valor, entradas }
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
    });
  }
}


/*
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
*/
