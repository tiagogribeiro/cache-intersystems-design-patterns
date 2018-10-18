/// Decorator
/// 
/// Dinamicamente, agregar responsabilidades adicionais a objetos. 
/// Os Decorators fornecem uma alternativa flexível ao uso de subclasses 
/// para extensão de funcionalidades.
Class Decorator.CoquetelDecorator Extends Decorator.Coquetel
{

Property coquetel As Coquetel [ Private ];

Method %OnNew(coquetel As Coquetel) As %Status
{
	Set ..coquetel = coquetel
	Quit $$$OK
}

Method getNome() As %String
{
	Quit ..coquetel.getNome() _" - "_ ..nome
}

Method getPreco() As %Double
{
	Quit ..coquetel.getPreco() _" - "_ ..preco
}

}

