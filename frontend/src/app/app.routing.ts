import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BlComponent } from './core/bl/bl.component';
import { BlDetailsComponent } from './core/bl-details/bl-details.component';

const routes: Routes = [
   {
     path: 'bl',
     component: BlComponent
  },
  {
    path:'bl-details',
    component: BlDetailsComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }