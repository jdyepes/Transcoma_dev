import {MODULES} from '../consts/consts.enum';

export class Module{

    name: MODULES;
    route: string;
    
    constructor(name, route){
        this.name = name;
        this.route = route;
    }
}