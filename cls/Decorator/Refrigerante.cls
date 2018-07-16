Class Decorator.Refrigerante Extends CoquetelDecorator
{

Method %OnNew(coquetel As Coquetel) As %Status
{
	Do ##super( coquetel )
	Set ..nome ="Refrigerante"
	Set ..preco = 1.0
	
	Quit $$$OK
}

}

