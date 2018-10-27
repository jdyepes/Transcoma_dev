import { Component, OnInit } from '@angular/core';
import { RouterModule, Router, RouterLink} from '@angular/router';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }

  goToMenu()
  { 
    localStorage.setItem("login","true");
    location.reload();
    //this.router.navigate(['/app-menu']);
  }

}
