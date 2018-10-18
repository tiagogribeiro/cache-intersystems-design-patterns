Class Bridge.JanelaDialogo Extends (JanelaAbstrata, %RegisteredObject)
{

Method %OnNew(janela As IJanelaImplementada) As %Status
{
    do ##super(janela)
    quit $$$OK
}

Method desenhar()
{
    do ..desenharJanela( "Janela Dialogo" )
    do ..desenharBotao(" Botão Sim ")
    do ..desenharBotao(" Botão Não ")
}

}

