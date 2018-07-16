Class Iterator.EmpresaList Extends (%ListOfDataTypes, Aggregate)
{

ClassMethod create() As Iterator.EmpresaList
{
    set lista = ..%New()
    do lista.Insert("Empresa 1")
    do lista.Insert("Empresa 2")
    do lista.Insert("Empresa 3")
    do lista.Insert("Empresa 4")
    
    quit lista
}

Storage Custom
{
<Type>%Library.CompleteCustomStorage</Type>
}

}

