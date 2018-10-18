Class TemplateMethod.AbstractClass Extends %RegisteredObject [ Abstract ]
{

Method exibirNome() As %Status
{
    write !,"Nome vazio."
    quit $$$OK
}

Method exibirCodigo() As %Status
{
    write !,"Código vazio."
    quit $$$OK
}

Method exibirNomeECodigoJuntos() As %Status [ Final ]
{
    write !,"Código e nome"
    quit $$$OK
}

}

