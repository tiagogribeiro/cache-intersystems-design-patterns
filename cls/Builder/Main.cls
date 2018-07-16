Class Builder.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    #dim celular As Celular    
    set celular = ##class(CelularBuilder).%New().comModelo("Nokia").comNome("Celular 123").build()
    
    write !,celular.getNome()
    write !,celular.getModelo(),!
    quit $$$OK
}

}

