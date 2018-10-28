import { Component, OnInit, Inject, Output, EventEmitter } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { Shipper} from '../../models/shipper';

@Component({
  selector: 'app-shipper-modal',
  templateUrl: './shipper-modal.component.html',
  styleUrls: ['./shipper-modal.component.css']
})
export class ShipperModalComponent {

  @Output() shipperEmiter: EventEmitter<Shipper> =  new EventEmitter<Shipper>();
  shipper: Shipper = new Shipper();
  constructor(public dialogRef: MatDialogRef<ShipperModalComponent>,
               @Inject(MAT_DIALOG_DATA) public data: Shipper) { }

  onNoClick(): void {
    this.dialogRef.close();
  }

  saveShipper() {
    this.shipperEmiter.emit(this.shipper);
    this.dialogRef.close();
  }

}
