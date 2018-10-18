Class Observer.DadosSubject Extends %RegisteredObject
{

Property observers As list Of DadosObserver;

Property dados As Dados;

Method %OnNew() As %Status
{
    set ..observers = ##class(%ListOfObjects).%New()
    quit $$$OK
}

Method attach(observer As DadosObserver) As %Status
{
    do ..observers.Insert( observer )
    quit $$$OK
}

Method detach(indice As %Integer) As %Status
{
    do ..observers.RemoveAt( indice )
    quit $$$OK
}

Method setState(dados As Dados) As %Status
{
    set ..dados = dados
    do ..notifyObservers()
    quit $$$OK
}

Method notifyObservers() As %Status [ Private ]
{
    #dim observer As DadosObserver
    #dim indice As %String
    for {
        set observer = ..observers.GetNext(.indice)
        quit:(indice="")
        
        do observer.update()
    }
    quit $$$OK
}

Method getState() As Dados
{
    quit ..dados
}

}

