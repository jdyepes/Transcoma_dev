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
import { Pedido } from 'src/app/models/Pedido';


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

export class PedidoDef {
  fechaSolicitud: Date;
  fechaEntrega: Date;
  estadoPedido: string;
  destinatario: string;
  producto: Producto;
  almacen: Almacen;
  cliente: Cliente;
}


@Component({
  selector: 'app-tracking',
  templateUrl: './tracking.component.html',
  styleUrls: ['./tracking.component.css']
})

export class TrackingComponent implements OnInit, AfterViewInit {

  /*constructor() { }*/

  mostrar = false; // si es admin muestra la lista de clientes
  margen: any = '600px';

  displayedColumnsEntrada: string[] = ['codClienteEntrada', 'fechaEntrada', 'codProducto',
  'descripcion', 'lote', 'estado', 'disponible'];
  dataSourceEntrada: MatTableDataSource<EntradaDef>; // new MatTableDataSource<EntradaElements>(ENTRADA_DATA);

  displayedColumnsSalida: string[] = ['codClienteSalida', 'fechaSalida', 'codProducto',
    'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourceSalida: MatTableDataSource<SalidaDef>;

  displayedColumnsPedido: string[] = ['codClientePedido', 'fechaSolicitud', 'fechaEntrega',
     'codProducto', 'descripcion', 'lote', 'estadoCalidad', 'disponible'];
  dataSourcePedido: MatTableDataSource<PedidoDef>;

  rolesList = ROL_DATA;

  /**Modulo de entrada */
  listEntrada: Entrada[];
  listInterface: EntradaDef[];
  selection = new SelectionModel<EntradaDef>(true, []);
  servicioTracking = new TrackingService(this.http);

  /* Modulo de salida */
  listSalida: Salida[];
  listInterfaceSalida: SalidaDef[];
  selectionSalida = new SelectionModel<SalidaDef>(true, []);

  /* Modulo de pedido */
  listPedido: Pedido[];
  listInterfacePedido: PedidoDef[];
  selectionPedido = new SelectionModel<PedidoDef>(true, []);



  @ViewChild('paginatorEntrada') paginatorEntrada: MatPaginator;
  @ViewChild('paginatorSalida') paginatorSalida: MatPaginator;
  @ViewChild('paginatorPedido') paginatorPedido: MatPaginator;

  // constructor(public dialog: MatDialog) { }
  constructor(public dialog: MatDialog, private router: Router, public http: HttpClient) {
    this.listInterface = new Array<EntradaDef>();
    this.listInterfaceSalida = new Array<SalidaDef>();
    this.listInterfacePedido = new Array<PedidoDef>();
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
      this.dataSourcePedido.data.forEach(row => this.selectionPedido.select(row));
  }


  ngAfterViewInit() {
    this.dataSourceEntrada.paginator = this.paginatorEntrada;
    this.dataSourceSalida.paginator = this.paginatorSalida;
    this.dataSourcePedido.paginator = this.paginatorPedido;
  }

  applyFilter(filterValue: string) {
    this.dataSourceEntrada.filter = filterValue.trim().toLowerCase();
    this.dataSourceSalida.filter = filterValue.trim().toLowerCase();
    this.dataSourcePedido.filter = filterValue.trim().toLowerCase();
  }

  _setDataSource(indexNumber) {
    setTimeout(() => {
      switch (indexNumber) {
        case 0:
          !this.dataSourceEntrada.paginator ? this.dataSourceEntrada.paginator = this.paginatorEntrada : null;
          break;
        case 1:
          !this.dataSourceSalida.paginator ? this.dataSourceSalida.paginator = this.paginatorSalida : null;
          break;
        case 2:
          !this.dataSourcePedido.paginator ? this.dataSourcePedido.paginator = this.paginatorPedido : null;
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


  fillListInterfacePedido() {

    this.listPedido.forEach((object => {
      let _pedido = new PedidoDef();

      _pedido.fechaSolicitud = object.$fechaSolicitud;
      _pedido.fechaEntrega = object.$fechaEntrega;
      _pedido.estadoPedido = object.$estadoPedido;
      _pedido.destinatario = object.$destinatario;
      _pedido.producto = object.$producto;
      _pedido.almacen = object.$almacen;
   //   _pedido.cliente = object.$cliente;
      this.listInterfacePedido.push(_pedido);
    }));
  }

async initializeTable() {
  await this.servicioTracking.ObtenerEntradaClientes(1)
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
        alert('Error cargando la lista de listaEntrada');
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
        alert('Error cargando la lista de ListaSalida ');
      }
    );

  await this.servicioTracking.ObtenerPedidoClientes(1)
    .then(
      res => {
        if (res.error) {
          console.log('en caso de error', res.error);
          alert('Error con el servicio');
        } else {
          this.listPedido = res;
          this.fillListInterfacePedido();
          this.dataSourcePedido = new MatTableDataSource<PedidoDef>(this.listInterfacePedido);
          this.dataSourcePedido.paginator = this.paginatorPedido;

        }
      },
      error => {
        console.log(error);
        alert('Error cargando la lista de ListaPedido');
      }
    );
  }

  openDialog(valor: string, datos: any): void {
    localStorage.setItem('posicion', valor);
    console.log(datos);
    const dialogRef = this.dialog.open(TrackingModalComponent, {
      data: { valor, datos }
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
    });
  }
}
