import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';

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
         MatGridListModule} from '@angular/material';
import { BlDetailsComponent } from './core/bl-details/bl-details.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    BlComponent,
    BlDetailsComponent
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
    MatGridListModule


  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
