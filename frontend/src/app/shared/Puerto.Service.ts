import { Injectable, Injector } from '@angular/core';
import { Http, Headers } from '@angular/http';
import {RequestOptions, Request} from '@angular/http';
import { Path, AppUrlBase, method } from '../consts/Path.const';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { BL } from '../models/BL';
import { Cotizacion } from '../models/Cotizacion';
import { Puerto } from '../models/Puerto';
import { Direccion } from '../models/Direccion';
import { Cliente } from '../models/Cliente';


const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    'Access-Control-Allow-Origin': '*'
  })
};

@Injectable()
export class PuertoService {

    apiUrl = AppUrlBase.appUrlBase+Path.PUERTO;
    public listaPuertos : Puerto[] ;

    constructor(private http: HttpClient) {
    }
    
     ObtenerPuertos(): Promise<any> {
        const url = this.apiUrl + method.ObtenerPuertos;

       return this.http.get<Puerto>(url, httpOptions).toPromise()
        .then((res) =>{

             console.log(res); 
             let puertos: Puerto[] = this.transformarDataToArray(res);
             console.log(puertos); 
             this.listaPuertos = puertos;
            return this.listaPuertos;

         },
         (error) => {
             console.log(error);
             return null;
         }
        );

        
        
    }



    extractData(res: any) {
        const data = res.json();
        return data;
    }

    transformarDataToArray(data){
       let list: Puerto[] = [];
       data.forEach((object =>{
           let puerto = new Puerto(object);
            list.push(puerto);
        }));
        return list;
    }


}