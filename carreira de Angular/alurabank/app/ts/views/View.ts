class View<T> {
    private _elemento: Element;
    constructor(seletor: string) {

        this._elemento = document.querySelector(seletor);
    }

    update(model: T) {

        this._elemento.innerHTML = this.template(model);
    }

    template(model: T): string {

        throw new Error('Você deve implementar o metodo template');
        
    }
}