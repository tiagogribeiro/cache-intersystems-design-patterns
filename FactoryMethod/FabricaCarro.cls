Class FactoryMethod.FabricaCarro Extends %RegisteredObject [ Abstract ]
{

ClassMethod criarCarro(modelo As ModeloCarro) As Carro [ Final ]
{
	#dim carro As Carro
	Set carro = $Case(modelo,
				##class(ModeloCarro).#FOCUS : ##class(Focus).criar(),
				##class(ModeloCarro).#UNO : ##class(Uno).criar(),
				##class(ModeloCarro).#GOL : ##class(Gol).criar())
				
	if ( carro = $$$NULLOREF ) {
		Throw ##class(%Exception.General).%New("Não encontrado a fábrica para o carro.")
	}
	
	Quit carro
}

}

