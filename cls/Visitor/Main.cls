Class Visitor.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    set empresas = ##class(Visitor.EmpresaLista).%New()
    do empresas.Insert("Empresa 1")
    do empresas.Insert("Empresa 2")
    do empresas.Insert("Empresa 3")
    do empresas.Insert("Empresa 4")
    do empresas.Insert("Empresa 5")
    
    
    set funcionario = ##class(Funcionario).%New()    
    do empresas.accept( funcionario )
    quit $$$OK
}

}

