class NegociacaoController{
    private _intputData;
    private _inputQuantidade;
    private _inputValor;

    constructor(){

        this._intputData = document.querySelector('#data');
        this._inputQuantidade = document.querySelector('#quantidade');
        this._inputValor = document.querySelector('#valor');

    }

    adiciona(event){

        event.preventDefault();

        const negociacao = new Negociacao(
            this._intputData.value,
            this._inputQuantidade.value,
            this._inputValor.value,
        );
            console.log(negociacao);
    }
}