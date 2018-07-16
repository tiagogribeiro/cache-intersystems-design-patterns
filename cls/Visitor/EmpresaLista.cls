Class Visitor.EmpresaLista Extends (%ListOfDataTypes, Visitor.Visitable)
{

Method accept(visitor As Visitor.Visitor) As %Status
{
    do visitor.visit( ##this )
    quit $$$OK
}

Storage Custom
{
<Type>%Library.CompleteCustomStorage</Type>
}

}

