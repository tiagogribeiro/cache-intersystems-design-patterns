Class Observer.TabelaObserver Extends DadosObserver
{

Method %OnNew(dados As DadosSubject) As %Status
{
    do ##super(dados)
    quit $$$OK
}

Method update() As %Status
{
    write !,"Tabela:",..dados.getState().valorA_" - "_..dados.getState().valorB_" - "_..dados.getState().valorC
    quit $$$OK
}

}

