Class Strategy.Funcionario Extends %RegisteredObject
{

Parameter DESENVOLVEDOR [ Final ] = 1;

Parameter DBA [ Final ] = 2;

Parameter GERENTE [ Final ] = 3;

Property salarioBase As %Double [ Private ];

Property estrategiaCalculo As CalculaImposto [ Private ];

Method %OnNew(cargo As %Integer, salarioBase As %Double) As %Status
{
	Set ..salarioBase = salarioBase
	Set ..estrategiaCalculo = $Case(cargo,
		..#DESENVOLVEDOR: ##class(CalculoImpostoQuizeOuDez).%New(),
		..#DBA : ##class(CalculoImpostoQuizeOuDez).%New(),
		..#GERENTE : ##class(CalculoImpostoVinteOuQuize).%New()
	)
	 Quit $$$OK
}

Method getSalarioBase() As %Double [ Final ]
{
	Quit ..salarioBase
}

Method calcularSalarioComImposto() [ Final ]
{
	Quit ..estrategiaCalculo.calculaSalarioComImposto(##this)
}

}

