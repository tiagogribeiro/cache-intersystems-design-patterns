Class FactoryMethod.Main Extends %RegisteredObject
{

ClassMethod main() [ Final ]
{
    
    #dim gol As Gol
    #dim focus As Focus
    #dim uno As Uno
    
    Set gol = ##class(FabricaCarro).criarCarro( ##class(ModeloCarro).#GOL )
    Write !,gol.getInfo()
    
    Set focus = ##class(FabricaCarro).criarCarro( ##class(ModeloCarro).#FOCUS )
    Write !,focus.getInfo()
    
    Set uno = ##class(FabricaCarro).criarCarro( ##class(ModeloCarro).#UNO )
    Write !,uno.getInfo()
}

}

