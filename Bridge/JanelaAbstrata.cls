Class Bridge.JanelaAbstrata [ Abstract ]
{

Property janela As IJanelaImplementada;

Method %OnNew(janela As IJanelaImplementada) As %Status
{
    set ..janela = janela
    quit $$$OK
}

Method desenharJanela(titulo As %String) As %Status
{
    do ..janela.desenharJanela( titulo )
}

Method desenharBotao(rotulo As %String) As %Status
{
    do ..janela.desenharBotao( rotulo )
}

Method desenhar()
{
}

}

