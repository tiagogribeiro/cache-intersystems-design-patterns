Class Flyweight.Ponto Extends %RegisteredObject
{

Property x As %Integer;

Property y As %Integer;

Method %OnNew(x As %Integer, y As %Integer) As %Status [ Private ]
{
    set ..x = x
    set ..y = y
    quit $$$OK
}

}

