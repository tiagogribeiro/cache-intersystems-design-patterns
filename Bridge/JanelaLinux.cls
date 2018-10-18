Class Bridge.JanelaLinux Extends IJanelaImplementada
{

Method desenharBotao(rotulo As %String) As %Status
{
    write !,rotulo_" - Botão Linux"
}

Method desenharJanela(titulo As %String) As %Status
{
    write !,titulo_" - Janela Linux"
}

}

