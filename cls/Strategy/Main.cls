Class Strategy.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
	#dim funcionario As Funcionario
	
	Set funcionario = ##class(Funcionario).%New( ##class(Funcionario).#DESENVOLVEDOR, 2100)
	Write !,funcionario.calcularSalarioComImposto()
	
	Set funcionario = ##class(Funcionario).%New( ##class(Funcionario).#DESENVOLVEDOR, 1700)
	Write !,funcionario.calcularSalarioComImposto()
	
	Set funcionario = ##class(Funcionario).%New( ##class(Funcionario).#DBA, 2500)
	Write !,funcionario.calcularSalarioComImposto()
}

}

