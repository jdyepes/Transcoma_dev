import { Component, OnInit } from '@angular/core';
import { RouterModule, Router, RouterLink} from '@angular/router';
import { MatButtonModule, MatToolbarModule } from '@angular/material';
import { MatProgressSpinnerModule} from '@angular/material';
import { Cliente } from 'src/app/models/Cliente';
import { TrackingService } from 'src/app/shared/Tracking.Service';
import { HttpClient } from '@angular/common/http';
import { Administrador } from 'src/app/models/Administrador';

export class ClienteDef {
  nombre: string;
  nombreUsuario: string;
  correo: string;
  password: string;
  fechaRegistro: string;
}

export class AdminDef {
  nombre: string;
  nombreUsuario: string;
  correo: string;
  password: string;
  fechaRegistro: string;
}

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {

  servicioTracking = new TrackingService(this.http);
  listInterface: ClienteDef[];
  listInterfaceAdmin: AdminDef[];
  nombreUsuario: string;
  contraseña: string;
  idUsuario: string;
  showSpinner: boolean;
  rol: string;

  constructor(private router: Router, public http: HttpClient) {
    this.listInterface = new Array<ClienteDef>();
    this.listInterfaceAdmin = new Array<AdminDef>();
   }
    username: string;
    password: string;

  ngOnInit() {
  }

  login(): void {
    if (this.username === '' || this.username == null ||
        this.password === '' || this.password == null) {
          alert('Campos requeridos. Ingrese nuevamente');
          this.username = '';
          this.password = '';
        } else {
        this.initializeAdmin();
        this.showSpinner = false;
    }
  }

async initializeAdmin() {
 await this.servicioTracking.LoginAdmin(this.username)
      .then(
        res => {
          if (res == null) { // no es admin o el usuario no existe
            // alert('nulo');
            this.initializeCliente();
          } else if (res.error) {
            console.log('en caso de error', res.error);
            alert('Error con el servicio');
          } else {
            console.log(res.nombre + 'yo');
            console.log(res.id + 'yo');
            this.nombreUsuario = res.login;
            this.contraseña = res.contraseña;
            this.idUsuario = res.id;
            this.rol = 'admin';
            this.validarCampos();
          }
        },
        error => {
          console.log(error);
          alert('Error cargando la lista de listaAdmin');
        }
      );
  }

  async initializeCliente() {
    await this.servicioTracking.LoginCliente(this.username)
      .then(
        res => {
          if (res == null) { // no es cliente o el usuario no existe
            alert('No se encuentra registrado. Intente nuevamente');
            this.username = '';
            this.password = '';
            location.reload();
          } else if (res.error) {
            console.log('en caso de error', res.error);
            alert('Error con el servicio');
          } else {
            console.log(res.nombre + 'yo');
            console.log(res.id + 'yo');
            this.nombreUsuario = res.login;
            this.contraseña = res.contraseña;
            this.idUsuario = res.id;
            this.rol = 'cliente';
            this.validarCampos();
          }
        },
        error => {
          console.log(error);
          alert('Error cargando la lista de listaCliente');
        }
      );
  }

  validarCampos() {
    if (this.username.toUpperCase() === this.nombreUsuario && this.password === this.contraseña) {
      localStorage.setItem('login', 'true');
      localStorage.setItem('usuarioLogueado', this.username);
      localStorage.setItem('idUsuario', this.idUsuario);
      localStorage.setItem('rol', this.rol);
      this.showSpinner = true;
      location.reload();
      this.router.navigate(['/app-menu']);
    } else {
      alert('Credenciales invalidas. Intente nuevamente');
      this.username = '';
      this.password = '';
    }
  }
}
