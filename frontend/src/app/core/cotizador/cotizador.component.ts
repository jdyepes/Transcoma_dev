import { Component, OnInit } from '@angular/core';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import {startWith, map} from 'rxjs/operators';
import {Cotizacion} from '../../models/Cotizacion';
import {Puerto} from '../../models/Puerto';
import {BL} from '../../models/BL';
import {Container} from '../../models/Container';
import {PuertoService} from '../../shared/Puerto.Service';
import { MatDialog } from '@angular/material';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';

export interface User {
  name: string;
}


@Component({
  selector: 'app-cotizador',
  templateUrl: './cotizador.component.html',
  styleUrls: ['./cotizador.component.css']
})


export class CotizadorComponent implements OnInit {

  cotizaciones: Cotizacion[]= [];
  puertos: Puerto[]=[];
  bl = new BL();
  container= new Container();
  puertoServicio= new  PuertoService(this.http);



  
  constructor(public dialog: MatDialog, private router: ActivatedRoute, private http: HttpClient) { 
    
  }

  obtenerPuertos(){
    this.puertoServicio.ObtenerPuertos()
    .then(
      res =>{
        if(res.error){
          console.log(res.error);
          alert("Error Obteniendo los puertos");
        } else{
          this.puertos = res;
          console.log("this.puertos");
          console.log(this.puertos);
        }
      },
      error =>{
        console.log(error);
        alert("Error cargando la lista de puertos");
      }
    )
  }

  myControl = new FormControl();
  options: User[] = [
    {name: 'Mary'},
    {name: 'Shelley'},
    {name: 'Igor'}
  ];
  filteredOptions: Observable<User[]>;
  ngOnInit() {
    this.filteredOptions = this.myControl.valueChanges
    .pipe(
      startWith<string | User>(''),
      map(value => typeof value === 'string' ? value : value.name),
      map(name => name ? this._filter(name) : this.options.slice())
    );
    this.obtenerPuertos();

  }



  displayFn(user?: User): string | undefined {
    return user ? user.name : undefined;
  }

  private _filter(name: string): User[] {
    const filterValue = name.toLowerCase();

    return this.options.filter(option => option.name.toLowerCase().indexOf(filterValue) === 0);
  }

}
