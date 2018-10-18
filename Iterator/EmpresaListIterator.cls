Class Iterator.EmpresaListIterator Extends Iterator
{

Property cursor As %Integer [ InitialExpression = 0, Private ];

Property listaEmpresas As %ListOfDataTypes [ Private ];

Method %OnNew(listaEmpresas As %ListOfDataTypes) As %Status [ Private ]
{
    set ..listaEmpresas = listaEmpresas
    do ..first()
    quit $$$OK
}

Method currentItem()
{
    quit ..listaEmpresas.GetAt(..cursor)
}

Method first()
{
    set ..cursor = 0
}

Method isDone()
{
    quit (..cursor > ..listaEmpresas.Count())
}

Method next()
{
    set ..cursor = ..cursor + 1
}

}

