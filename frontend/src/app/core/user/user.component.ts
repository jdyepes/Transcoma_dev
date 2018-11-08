import { Component, OnInit, ViewChild } from '@angular/core';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { MatDialog, MatTableDataSource, MatPaginator } from '@angular/material';
import { TrackingService } from 'src/app/shared/Tracking.Service';
import { Cliente } from 'src/app/models/Cliente';
import { SelectionModel } from '@angular/cdk/collections';


// tslint:disable-next-line:component-class-suffix
export class ClienteDef {
  nombre: string;
  nombreUsuario: string;
  correo: string;
  password: string;
  fechaRegistro: string;
}

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})

export class UserComponent implements OnInit {

  servicioTracking = new TrackingService(this.http);

  showSpinner = true;

  displayedColumnsCliente: string[] = ['fechaRegistro', 'nombre', 'correo'];
  dataSourceCliente: MatTableDataSource<ClienteDef>;

  /**Modulo de cliente */
  listCliente: Cliente[];
  listInterface: ClienteDef[];
  selection = new SelectionModel<ClienteDef>(true, []);

  @ViewChild('paginatorCliente') paginatorCliente: MatPaginator;

  constructor(public dialog: MatDialog, private router: Router, public http: HttpClient) {
    this.listInterface = new Array<ClienteDef>();

  }

  ngOnInit() {
    this.initializeUser();
  }

  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSourceCliente.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSourceCliente.data.forEach(row => this.selection.select(row));
  }

  async initializeUser() {
    await this.servicioTracking.ObtenerClienteAdmin(1)
      .then(
        res => {
          if (res.error) {
            console.log('en caso de error', res.error);
            alert('Error con el servicio');
          } else {
            this.listCliente = res;
            this.fillListInterface();
            this.dataSourceCliente = new MatTableDataSource<ClienteDef>(this.listInterface);
            this.dataSourceCliente.paginator = this.paginatorCliente;

          }
        },
        error => {
          console.log(error);
          alert('Error cargando la lista de listaEntrada');
        }
      );
    this.showSpinner = false;
  }

  fillListInterface() {

    this.listCliente.forEach((object => {

      let _cliente = new ClienteDef();

      _cliente.nombre = object.$nombre;
      _cliente.nombreUsuario = object.$nombreUsuario;
      _cliente.correo = object.$correo;
      _cliente.password = object.$password;
      _cliente.fechaRegistro = object.$fechaRegistro;
      this.listInterface.push(_cliente);
    }));

  }

}
