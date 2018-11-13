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
export class BLService {

    apiUrl = AppUrlBase.appUrlBase+Path.BL;
    public listaBls : BL[] ;

    constructor(private http: HttpClient) {
    }
    
     ObtenerBLsCliente(idCliente: number): Promise<any> {
        const url = this.apiUrl + method.ObtenerBLCliente+ idCliente;

/*
        this.http.get<BL>(url, httpOptions).subscribe(
            data=>{
                    //const res = this.extractData(data);
                    console.log(data); 
                    let bls: BL[] = this.transformarDataToArray(data);
                    console.log(bls); 
                    this.listaBls = bls;
                    //return bls;  
                           
            },
            Error => {
                alert("Error al obtener la lista de bl");
                
            }
        );
*/
       return this.http.get<BL>(url, httpOptions).toPromise()
        .then((res) =>{

             //const res = this.extractData(data);
             console.log(res); 
             let bls: BL[] = this.transformarDataToArray(res);
             console.log(bls); 
             this.listaBls = bls;
             //return bls; 
            return this.listaBls;

         },
         (error) => {
             console.log(error);
             return null;
         }
        );

        
        
    }

    AgregarBL(bl: BL): Promise<any> {
        const url = this.apiUrl + method.AgregarBL;
       return this.http.post<BL>(url,bl, {responseType: 'json'}).toPromise()
        .then((res) =>{
             console.log(res); 
            return res;

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
       let list: BL[] = [];
       data.forEach((object =>{
           let bl = new BL(object);
            list.push(bl);
        }));
        return list;
    }


}