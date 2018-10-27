export class EntidadBase {

    private id: number;

    public get $id(): number {
        return this.id;
    }

    public set $id(value: number) {
        this.id = value;
    }
}
