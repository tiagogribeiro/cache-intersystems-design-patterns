Class Strategy.CalculoImpostoQuizeOuDez Extends CalculaImposto
{

Method calculaSalarioComImposto(funcionario As Funcionario) As %Double [ Final ]
{
	If (funcionario.getSalarioBase() > 2000){
		Quit funcionario.getSalarioBase() * 0.85
	}	
	Quit funcionario.getSalarioBase() * 0.9
}

}

