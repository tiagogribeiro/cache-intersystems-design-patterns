Class Command.Compra Extends %RegisteredObject
{

Property valor As %Double [ Private ];

Method setValor(valor As %Double)
{
	Set ..valor = valor
}

Method getValor() As %Double
{
	Quit ..valor
}

}

