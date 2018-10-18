Class TemplateMethod.Main Extends %RegisteredObject
{

Method %OnNew() As %Status [ Private ]
{
    set concrete = ##class(ConcreteClass).%New()
    do concrete.exibirCodigo()
    do concrete.exibirNome()
    do concrete.exibirNomeECodigoJuntos()
    
    quit $$$OK
}

}

