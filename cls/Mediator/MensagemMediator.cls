Class Mediator.MensagemMediator Extends Mediator.Mediator
{

Property contatos As list Of Colleague [ Private ];

Method %OnNew() As %Status
{
    set ..contatos = ##class(%ListOfObjects).%New()
    quit $$$OK
}

Method adicionarColeague(colleague As Colleague) As %Status
{
    do ..contatos.Insert( colleague )
    quit $$$OK
}

Method enviar(mensagem As %String, Colleague As Colleague) As %Status
{
    #dim indice As %String
    #dim contato As Colleague
    for {
        set contato = ..contatos.GetNext(.indice)
        quit:(indice="")
        
        do contato.receberMensagem( mensagem )
    }
    quit $$$OK
}

}

