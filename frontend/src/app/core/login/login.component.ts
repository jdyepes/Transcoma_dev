import { Component, OnInit } from '@angular/core';
import { RouterModule, Router, RouterLink} from '@angular/router';
import { MatButtonModule, MatToolbarModule } from '@angular/material';
import { MatProgressSpinnerModule} from '@angular/material';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private router: Router) { }
    username: string;
    password: string;

  ngOnInit() {
  }

  login(): void {
    if (this.username === 'admin' && this.password === 'admin') {
      localStorage.setItem('login', 'true');
      
      location.reload();
      this.router.navigate(['/app-menu']);
    } else {
      alert('Intente nuevamente');
      this.username = '';
      this.password = '';
    }
  }
}
