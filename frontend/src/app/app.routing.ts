import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BlComponent } from './core/bl/bl.component';
import { BlDetailsComponent } from './core/bl-details/bl-details.component';
import { TrackingComponent } from './core/tracking/tracking.component';
import { HomeComponent } from './core/home/home.component';
import { CotizadorComponent } from './core/cotizador/cotizador.component';
import { LoginComponent } from './core/login/login.component';

const routes: Routes = [
  {
    path: 'home',
    component: HomeComponent
  },
  {

   {
     path: 'bl',
     component: BlComponent
  },
  {
    path: 'login',
    component: LoginComponent
 },
  {
    path: 'bl-details',
    component: BlDetailsComponent
  },
  {
    path: 'tracking',
    component: TrackingComponent
  },
  {
    path: 'cotizador',
    component: CotizadorComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }