import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { AppComponent } from './app.component';
import { MenuComponent } from './menu/menu.component';
import { AppRoutingModule } from './app.routing';
import { BlComponent } from './core/bl/bl.component';
import { MatButtonModule,
         MatToolbarModule,
         MatSidenavModule,
         MatIconModule,
         MatListModule,
         MatTableModule,
         MatCheckboxModule,
         MatCardModule,
         MatFormFieldModule,
         MatInputModule,
         MatPaginatorModule,
         MatOptionModule,
         MatAutocompleteModule,
         MatSelectModule,
         MatGridListModule,
         MatDialogModule} from '@angular/material';
import { BlDetailsComponent } from './core/bl-details/bl-details.component';
import { TrackingComponent } from './core/tracking/tracking.component';
import { MatTabsModule } from '@angular/material/tabs';
import { HomeComponent } from './core/home/home.component';
import { CotizadorComponent } from './core/cotizador/cotizador.component';
import { LoginComponent } from './core/login/login.component';
import { ShipperModalComponent } from './components/shipper-modal/shipper-modal.component';
import { TrackingModalComponent } from './components/tracking-modal/tracking-modal.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    BlComponent,
    BlDetailsComponent,
    TrackingComponent,
    HomeComponent,
    CotizadorComponent,
    LoginComponent,
    ShipperModalComponent,
    TrackingModalComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatToolbarModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule,
    MatTableModule,
    MatCheckboxModule,
    MatCardModule,
    MatFormFieldModule,
    MatInputModule,
    MatPaginatorModule,
    MatGridListModule,
    MatTabsModule,
    MatOptionModule,
    MatAutocompleteModule,
    FormsModule,
    ReactiveFormsModule,
    MatSelectModule,
    MatDialogModule
  ],
  entryComponents: [
    ShipperModalComponent,
    TrackingModalComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
