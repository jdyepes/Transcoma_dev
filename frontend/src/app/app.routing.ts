import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BlComponent } from './core/bl/bl.component';
import { BlDetailsComponent } from './core/bl-details/bl-details.component';
import { TrackingComponent } from './core/tracking/tracking.component';

const routes: Routes = [
   {
     path: 'bl',
     component: BlComponent
  },
  {
    path: 'bl-details',
    component: BlDetailsComponent
  },
  {
    path: 'tracking',
    component: TrackingComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }