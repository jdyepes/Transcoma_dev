import { Component, OnInit, Inject} from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { EntradaElements } from 'src/app/core/tracking/tracking.component';

@Component({
  selector: 'app-tracking-modal',
  templateUrl: './tracking-modal.component.html',
  styleUrls: ['./tracking-modal.component.css']
})
export class TrackingModalComponent {
  Posicion = localStorage.getItem('posicion');
  constructor(
    public dialogRef: MatDialogRef<TrackingModalComponent>,
    @Inject(MAT_DIALOG_DATA) public entrada: EntradaElements ) { }

  onNoClick(): void {
    this.dialogRef.close();
  }
}
