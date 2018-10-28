import { Component, NgZone, AfterViewInit, Injectable, OnInit } from '@angular/core';
import { RouterModule, Router, RouterLink} from '@angular/router';
import { BreakpointObserver, Breakpoints, BreakpointState} from '@angular/cdk/layout';
import { MODULES } from '../consts/consts.enum';
import { Module } from '../models/modules';
import { Observable } from 'rxjs';

type Menu = 'menu';

 @Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})

@Injectable()
export class MenuComponent implements AfterViewInit {

  public moduleArray: Array<Module>;
  private moduleMap: Map<MODULES, Module> = new Map<MODULES, Module>();
  private loadPanel: boolean;
  private menu: Menu;
  public esHome: boolean;
  public logueado: string;

  isHandset: Observable<BreakpointState> = this.breakpointObserver.observe(Breakpoints.Handset);

  constructor(private router: Router, private _zone: NgZone, private breakpointObserver: BreakpointObserver) {

    this.moduleArray = [
          new Module(MODULES.BL, 'Bl')
    ];

    this.initialiseModules();
    this.menu = 'menu';
    this.logueado = localStorage.getItem('login');
  }

  ngOnInit() {
    if (window.location.href == window.location.origin + '/home') {
      this.esHome = false;
    } else {
      this.esHome = true;
    }
  }

  initialiseModules() {

    for (var i = 0 ; i < this.moduleArray.length; i++) {
      this.moduleMap.set(this.moduleArray[i].name, this.moduleArray[i]);
    }
  }

 logout() {
  localStorage.setItem('login', 'false');
  localStorage.clear();
  location.reload();
  this.router.navigate(['/']);
 }
 login() {
    localStorage.setItem('login', 'true');
 }
 setHome() {
   this.esHome = true;
 }

 toggleUserPanel() {
   this.loadPanel = !this.loadPanel;
   if (this.loadPanel) {
      this.menu = 'menu';
   } else {
     this.menu = 'menu';
   }
 }
  ngAfterViewInit() {

  }
}
