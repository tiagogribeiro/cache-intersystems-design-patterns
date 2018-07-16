Class ChainOfResponsability.Main Extends %RegisteredObject
{

ClassMethod main() [ Final ]
{
    #dim bancos As BancoChain
    
    Set bancos = ##class(BancoA).%New()
    Do bancos.setNext( ##class(BancoB).%New() )
    Do bancos.setNext( ##class(BancoC).%New() )
    Do bancos.setNext( ##class(BancoD).%New() )
    
    Try {
        Do bancos.efetuarPagamento( ##class(IDBanco).#BANCOuC )
        Do bancos.efetuarPagamento( ##class(IDBanco).#BANCOuD )
        Do bancos.efetuarPagamento( ##class(IDBanco).#BANCOuA )
        Do bancos.efetuarPagamento( ##class(IDBanco).#BANCOuB )     
    } Catch exception {
        W !,$$$FormatText("[Error] %1 %2", exception.Name, exception.Data ) 
    }
}

}

