Class Memento.TextoMemento Extends %RegisteredObject
{

Property texto As %String [ Private ];

Method %OnNew(texto As %String) As %Status
{
    set ..texto = texto
    quit $$$OK
}

Method getTexto() As %String
{
    quit ..texto
}

}

