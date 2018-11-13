import { Component, OnInit, ViewChild } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { HttpModule } from '@angular/http';
import { SimplePlaceholderMapper } from '@angular/compiler/src/i18n/serializers/serializer';
import { RouterModule, Router, RouterLink, ActivatedRoute} from '@angular/router';
import { BL } from '../../models/BL';
import { BLService } from '../../shared/BL.Service';

@Component({
  selector: 'app-bl-details',
  templateUrl: './bl-details.component.html',
  styleUrls: ['./bl-details.component.css']
})
export class BlDetailsComponent implements OnInit {

  bl: BL = new BL();
  servicioBl = new BLService(this.http);

  constructor(public dialog: MatDialog, private router: ActivatedRoute, private http: HttpClient) { 
    this.bl = JSON.parse(localStorage.getItem('bl'));
    console.log(this.bl);
  }

  ngOnInit() {
  }


  agregarBL(){
    if(this.bl){
      this.servicioBl.AgregarBL(this.bl)
      .then(
        res =>{
          if(res.error){
            console.log(res.error);
            alert("Error registrando el BL");
          } else{
            console.log(res);
            alert("BL registrado con exito");

          }
        },
        error =>{
          console.log(error);
          alert("Error cargando la lista de bl");
        }
      )
    }
    /*await this.servicioBl.ObtenerBLsCliente(1)
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
     */
  }
  openDialog() {
   /* const dialogRef = this.dialog.open(ShipperModalComponent, {
      width: '250px',
      data: {_nombre: this.shipper.$nombre, _empresa: this.shipper.$empresa, _nif: this.shipper.$nif}
    });

    dialogRef.afterClosed().subscribe(result => {
      this.shipper = result;
    });

    this.shipperModal.shipperEmiter.subscribe(
      res => {
        this.shipper = res;
      }
    );*/
  }

}
