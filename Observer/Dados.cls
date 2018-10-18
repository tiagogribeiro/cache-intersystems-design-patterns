Class Observer.Dados Extends %RegisteredObject
{

Property valorA As %Integer;

Property valorB As %Integer;

Property valorC As %Integer;

Method %OnNew(valorA As %Integer, valorB As %Integer, valorC As %Integer) As %Status
{
    set ..valorA = valorA
    set ..valorB = valorB
    set ..valorC = valorC
    quit $$$OK
}

}

