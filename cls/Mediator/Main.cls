Class Mediator.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    set mediator = ##class(Mediator.MensagemMediator).%New()
    
    set androidColleague = ##class(Mediator.AndroidColleague).%New( mediator )
    set IOSColleague = ##class(Mediator.IOSColleague).%New( mediator )
    
    do mediator.adicionarColeague( androidColleague )
    do mediator.adicionarColeague( IOSColleague )
    
    do androidColleague.enviarMensagem("Olá sou o Android")
    do IOSColleague.enviarMensagem("Olá sou o IOS")
    
    quit $$$OK
}

}

