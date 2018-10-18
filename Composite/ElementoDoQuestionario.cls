Class Composite.ElementoDoQuestionario Extends %RegisteredObject [ Abstract ]
{

Property descricao As %String;

Method %OnNew(descricao As %String) As %Status [ Private ]
{
    set ..descricao = descricao
    quit $$$OK
}

Method exibir() As %Status
{
    quit $$$OK
}

}

