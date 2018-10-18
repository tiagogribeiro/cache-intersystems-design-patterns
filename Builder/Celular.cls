Class Builder.Celular Extends %RegisteredObject
{

Property modelo As %String [ Final, Private ];

Property nome As %String [ Final, Private ];

Method %OnNew(modelo As %String, nome As %String) As %Status [ Private, ServerOnly = 1 ]
{
	Set ..modelo = modelo
	Set ..nome = nome
	Quit $$$OK
}

Method getNome() As %String [ Final ]
{
	Quit ..nome
}

Method getModelo() As %String [ Final ]
{
	Quit ..modelo
}

}

