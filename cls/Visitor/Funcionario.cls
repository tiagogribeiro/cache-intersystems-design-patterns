Class Visitor.Funcionario Extends Visitor
{

Method visit(visitor As EmpresaLista) As %Status
{
    do ..quantidadeEmpresasVisitadas( visitor )
    do ..exibirEmpresas( visitor )
    quit $$$OK
}

Method quantidadeEmpresasVisitadas(empresaLista As EmpresaLista)
{
    write !,"Visistando..."
    write !,empresaLista.Count()_" Empresas."
}

Method exibirEmpresas(empresaLista As EmpresaLista)
{
    write !,"Listando:"
    #dim empresa,indice As %String
    for {
        set empresa = empresaLista.GetNext(.indice)
        quit:(indice="") 
        
        write !,empresa
    }
}

}

