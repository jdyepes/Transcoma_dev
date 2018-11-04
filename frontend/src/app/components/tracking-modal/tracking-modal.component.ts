import { Component, OnInit, Inject} from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';


@Component({
  selector: 'app-tracking-modal',
  templateUrl: './tracking-modal.component.html',
  styleUrls: ['./tracking-modal.component.css']
})
export class TrackingModalComponent {
  Posicion = localStorage.getItem('posicion');

  constructor(
    public dialogRef: MatDialogRef<TrackingModalComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any) { console.log(data); }

  onNoClick(): void {
    this.dialogRef.close();
  }
}
