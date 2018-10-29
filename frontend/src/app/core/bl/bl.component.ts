import { Component, OnInit, ViewChild } from '@angular/core';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { HttpModule } from '@angular/http';
import {SelectionModel} from '@angular/cdk/collections';
import {MatPaginator, MatTableDataSource} from '@angular/material';
import { RouterModule, Router, RouterLink} from '@angular/router';
import { BLService } from '../../shared/BL.Service';
import { BL } from '../../models/BL';

export class Bl {
  referencia: string;
  shipper: string;
  consignatario: string;
  pod: string;
  pol: string;
//  fecha: string;
  volumen: string;
}
/*
const ELEMENT_DATA: Bl[] = [
  { referencia: 'BL1800001350',
    shipper: 'TECNOLOGIA DE MONTAJES Y MANTENIMIENTOS',
    consignatario: 'A L ORDRE DE LA SOCIETE GENERAL',
    pod: 'PORT D ALGER',
    pol: 'VALENCIA',
    fecha: '14/09/2018 19:44:18'
  },
  { referencia: 'BL1800001351',
    shipper: 'TECNOLOGIA DE MONTAJES Y MANTENIMIENTOS 2',
    consignatario: 'A L ORDRE DE LA SOCIETE GENERAL 2',
    pod: 'PORT D ALGER 2',
    pol: 'BARCELONA',
    fecha: '15/09/2018 19:44:18'
  }
  
];*/


@Component({
  selector: 'app-bl',
  templateUrl: './bl.component.html',
  styleUrls: ['./bl.component.css']
})
export class BlComponent implements OnInit {

  displayedColumns: string[] = ['acciones','referencia', 
                                 'shipper','consignatario','pod',
                                 'pol','volumen'];
  dataSource:  MatTableDataSource<Bl>;//Bl dataSource = new MatTableDataSource<BL>(ELEMENT_DATA);//Bl
  listBl: BL[];
  listInterface:Bl[];
  selection = new SelectionModel<Bl>(true, []);//Bl
  servicioBl = new BLService(this.http);

  @ViewChild(MatPaginator) paginator: MatPaginator;
  
  constructor(private router: Router, public http: HttpClient) {
    this.listInterface =  new Array<Bl>(); 
  }

  ngOnInit() {
    
    this.initializeTable();
  }


  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected() ?
        this.selection.clear() :
        this.dataSource.data.forEach(row => this.selection.select(row));
  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  goToBlDetails(ref)
  { 
    console.log(ref);
    //localStorage.setItem("bl",);
    this.router.navigate(['/bl-details']);
  }

  fillListInterface()
  {
    this.listBl.forEach((object =>{

      let _bl = new Bl();
      _bl.referencia= object.$id.toString();
      _bl.consignatario = object.$NotifyParty;
      _bl.pol = object.$Pol.$Nombre;
      _bl.pod = object.$Pod.$Nombre;
      _bl.volumen = object.$Volumen.toString();
      
      this.listInterface.push(_bl);
  }));
  }

   async initializeTable()
  {
     await this.servicioBl.ObtenerBLsCliente(1)
     .then(
          res =>{
              if(res.error){
                console.log(res.error);
                alert("Error con el servicio");
              } else{
                this.listBl = res;
                this.fillListInterface();
                this.dataSource  = new MatTableDataSource<Bl>(this.listInterface);
                this.dataSource.paginator = this.paginator;

              }
          },
          error =>{
            console.log(error);
            alert("Error cargando la lista de bl");
          }
     );
    
  }

  /** referencia: string;
  estado: string;
  shipper: string;
  consignatario: string;
  pod: string;
  pol: string;
  fecha: string; */
}
