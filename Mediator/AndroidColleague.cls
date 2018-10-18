Class Mediator.AndroidColleague Extends Mediator.Colleague
{

Method %OnNew(mediator As Mediator) As %Status
{
    do ##super(mediator)
    quit $$$OK
}

Method receberMensagem(mensagem As %String) As %Status
{
    write !,"(Recebido) Mensagem Android: "_mensagem
    quit $$$OK
}

}

