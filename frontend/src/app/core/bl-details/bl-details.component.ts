import { Component, OnInit, ViewChild } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material';
import { ShipperModalComponent } from '../../components/shipper-modal/shipper-modal.component';
import { SimplePlaceholderMapper } from '@angular/compiler/src/i18n/serializers/serializer';
import { Shipper } from 'src/app/models/shipper';


@Component({
  selector: 'app-bl-details',
  templateUrl: './bl-details.component.html',
  styleUrls: ['./bl-details.component.css']
})
export class BlDetailsComponent implements OnInit {

  shipper: Shipper = new Shipper();
  @ViewChild('shipper-modal') shipperModal: ShipperModalComponent;


  constructor(public dialog: MatDialog) { }

  ngOnInit() {
  }

  openDialog() {
    const dialogRef = this.dialog.open(ShipperModalComponent, {
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
    );
  }

}
