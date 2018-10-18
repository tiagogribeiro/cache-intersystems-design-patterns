Class Decorator.Main Extends %RegisteredObject
{

ClassMethod main() [ Final ]
{
    #dim coquetel As Coquetel
    
    Set coquetel = ##class(Cachaca).%New()
    Write !,coquetel.getNome()_" - "_coquetel.getPreco()
    
    Set coquetel = ##class(Refrigerante).%New( coquetel )
    Write !,coquetel.getNome()_" - "_coquetel.getPreco()
}

}

