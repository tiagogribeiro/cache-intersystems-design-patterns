Class Iterator.Main Extends %RegisteredObject
{

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
    #dim empresas As %ListOfDataTypes
    #dim iterator As EmpresaListIterator
    
    set empresas = ##class(EmpresaList).create()
    set iterator = ##class(EmpresaListIterator).%New( empresas )
    
    do iterator.next()
    for {
        quit:(iterator.isDone())
        write !,iterator.currentItem()
        do iterator.next()
    }
    
    Quit $$$OK
}

}

