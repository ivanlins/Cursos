import { NegociacoesView, MensagemView } from '../views/index';
import { Negociacoes, Negociacao } from '../models/index';
import { domInject, throttle } from '../helpers/decorators/index';
import { NegociacaoParcial } from '../models/NegociacaoParcial';
import { NegociacaoService } from '../services/index';


let timer = 0;

export class NegociacaoController {

    @domInject('#data')
    private _inputData: JQuery;

    @domInject('#quantidade')
    private _inputQuantidade: JQuery;

    @domInject('#valor')
    private _inputValor: JQuery;

    private _negociacoes = new Negociacoes();
    private _negociacoesView = new NegociacoesView('#negociacoesView');
    private _mensagemView = new MensagemView('#mensagemView');

    private _service = new NegociacaoService();
    


    constructor() {
        this._negociacoesView.update(this._negociacoes);

    }
    @throttle()
    adiciona() {

        let data = new Date(this._inputData.val().replace(/-/g, ','));

        if (!this._ehDiaUtil(data)) {

            this._mensagemView.update('somente negociações em dias uteis pf');
            return
        }

        const negociacao = new Negociacao(
            data,
            parseInt(this._inputQuantidade.val()),
            parseFloat(this._inputValor.val())
        );

        this._negociacoes.adiciona(negociacao);
        this._negociacoesView.update(this._negociacoes);
        this._mensagemView.update('Negociação adicionada com sucesso!');


    }

    private _ehDiaUtil(Data: Date) {

        return Data.getDay() != DiaDaSemana.Sabado && Data.getDay() != DiaDaSemana.Domingo;
    }

    @throttle()
    importaDados() {
            this._service
                .obterNegociacoes(res =>{
                    
                    if (res.ok) {
                        return res;
                    } else {
                        throw new Error(res.statusText);
                    }

                })
                .then((negociacoes: Negociacao[])  => {

                    negociacoes.forEach(negociacao =>
                        this._negociacoes.adiciona(negociacao))

                    this._negociacoesView.update(this._negociacoes);
                    }); 
                        
    }

}
enum DiaDaSemana {

    Domingo,
    Segunda,
    Terca,
    Quarta,
    Quinta,
    Sexta,
    Sabado
}