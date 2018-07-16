Class Observer.PorcentoObserver Extends DadosObserver
{

Method %OnNew(dados As DadosSubject) As %Status
{
   do ##super(dados)
   quit $$$OK
}

Method update() As %Status
{
    write !,"Porcento:",(..dados.getState().valorA/..dados.getState().valorB)*..dados.getState().valorC
    quit $$$OK
}

}

