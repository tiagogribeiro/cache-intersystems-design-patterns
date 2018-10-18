Class Memento.Texto Extends %RegisteredObject
{

Property texto As %String [ Private ];

Property careTaker As TextoCareTaker [ Private ];

Method %OnNew() As %Status
{
    set ..careTaker = ##class(TextoCareTaker).%New()
    quit $$$OK
}

Method escreverTexto(novoTexto As %String) As %Status
{
   do ..careTaker.adicionarMemento( ##class(TextoMemento).%New( ..texto_novoTexto ) )
   set ..texto = ..texto_novoTexto
   quit $$$OK
}

Method desfazerEscrita() As %Status
{
    set ..texto = ..careTaker.getUltimoEstadoTexto().getTexto()
    quit $$$OK
}

Method mostrarTexto() As %Status
{
    write !,..texto
    quit $$$OK
}

}

