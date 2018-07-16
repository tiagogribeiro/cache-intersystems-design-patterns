Class Mediator.Colleague Extends %RegisteredObject [ Abstract ]
{

Property mediator As Mediator.Mediator [ Private ];

Method %OnNew(mediator As Mediator) As %Status
{
    set ..mediator = mediator
    quit $$$OK
}

Method enviarMensagem(mensagem As %String) As %Status
{
    do ..mediator.enviar(mensagem, ##this)
    quit $$$OK
}

Method receberMensagem(mensagem As %String) As %Status
{
    quit $$$OK
}

}

