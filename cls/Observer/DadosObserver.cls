Class Observer.DadosObserver Extends %RegisteredObject [ Abstract ]
{

Property dados As DadosSubject;

Method %OnNew(dados As DadosSubject) As %Status
{
    set ..dados = dados
    quit $$$OK
}

Method update() As %Status
{
    quit $$$OK
}

}

