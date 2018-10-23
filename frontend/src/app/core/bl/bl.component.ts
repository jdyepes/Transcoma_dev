import { Component, OnInit, ViewChild } from '@angular/core';

import {SelectionModel} from '@angular/cdk/collections';
import {MatPaginator, MatTableDataSource} from '@angular/material';
import { RouterModule, Router, RouterLink} from '@angular/router';

export interface Bl {
  referencia: string;
  estado: string;
  shipper: string;
  consignatario: string;
  pod: string;
  pol: string;
  incoterm: string;
  cliente: string;
  trabajando: string;
  fecha: string;
}

const ELEMENT_DATA: Bl[] = [
  { referencia: 'BL1800001350',
    estado: 'PENDING',
    shipper: 'TECNOLOGIA DE MONTAJES Y MANTENIMIENTOS',
    consignatario: 'A L ORDRE DE LA SOCIETE GENERAL',
    pod: 'PORT D ALGER',
    pol: 'VALENCIA',
    incoterm: 'CFR',
    cliente: '',
    trabajando: '',
    fecha: '14/09/2018 19:44:18'
  },
  { referencia: 'BL1800001351',
    estado: 'IN PROCESS',
    shipper: 'TECNOLOGIA DE MONTAJES Y MANTENIMIENTOS 2',
    consignatario: 'A L ORDRE DE LA SOCIETE GENERAL 2',
    pod: 'PORT D ALGER 2',
    pol: 'BARCELONA',
    incoterm: 'CFR 2',
    cliente: '',
    trabajando: '',
    fecha: '15/09/2018 19:44:18'
  }
  
];


@Component({
  selector: 'app-bl',
  templateUrl: './bl.component.html',
  styleUrls: ['./bl.component.css']
})
export class BlComponent implements OnInit {

  displayedColumns: string[] = ['acciones','referencia','estado', 
                                 'shipper','consignatario','pod',
                                 'pol','incoterm','cliente','trabajando',
                                 'fecha'];
  dataSource = new MatTableDataSource<Bl>(ELEMENT_DATA);
  selection = new SelectionModel<Bl>(true, []);


  @ViewChild(MatPaginator) paginator: MatPaginator;
  
  constructor(private router: Router) { }

  ngOnInit() {
    this.dataSource.paginator = this.paginator;
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

  goToBlDetails()
  { 
    this.router.navigate(['/bl-details']);
  }

}
