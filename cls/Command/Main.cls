Class Command.Main Extends %RegisteredObject
{

ClassMethod main() [ Final ]
{
    #dim lojaBazar As Loja
    
    Set lojaBazar = ##class(Loja).%New()
    Do lojaBazar.executarCompra(100, ##class(PagamentoBoleto).%New() )
    Do lojaBazar.executarCompra(200, ##class(PagamentoCartao).%New() )
}

}

