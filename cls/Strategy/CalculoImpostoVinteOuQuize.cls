Class Strategy.CalculoImpostoVinteOuQuize Extends CalculaImposto
{

Method calculaSalarioComImposto(funcionario As Funcionario) As %Double [ Final ]
{
	If (funcionario.getSalarioBase() > 2000){
		Quit funcionario.getSalarioBase() * 0.80
	}	
	Quit funcionario.getSalarioBase() * 0.85
}

}

