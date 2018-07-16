Class Memento.TextoCareTaker Extends %RegisteredObject
{

Property estados As list Of TextoMemento [ Private ];

Method %OnNew() As %Status
{
    set ..estados = ##class(%ListOfObjects).%New()
    quit $$$OK
}

Method adicionarMemento(textoMemento As TextoMemento) As %Status
{
    do ..estados.Insert( textoMemento )
    quit $$$OK
}

Method getUltimoEstadoTexto() As TextoMemento
{
    do ..estados.RemoveAt( ..estados.Count() )
    if ( ..estados.Count() <=0 ){
        quit ##class(TextoMemento).%New("")
    }
    
    quit ..estados.GetAt( ..estados.Count() )
}

}

