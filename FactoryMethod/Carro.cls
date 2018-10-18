Class FactoryMethod.Carro Extends %RegisteredObject [ Abstract ]
{

Property potencia As %String [ Final, Private ];

Method %OnNew(potencia As %String) As %Status [ Private, ServerOnly = 1 ]
{
	Set ..potencia = potencia
	Quit $$$OK
}

ClassMethod criarCarro() As Carro [ Final ]
{
	
	Quit ..%New( "" )
}

}

