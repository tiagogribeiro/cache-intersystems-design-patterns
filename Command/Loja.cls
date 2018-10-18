Class Command.Loja Extends %RegisteredObject
{

Method executarCompra(valor As %Double, formaDePagamento As PagamentoCommand)
{
	Set compra = ##class(Compra).%New()
	Do compra.setValor( valor )	
	Do formaDePagamento.processarCompra( compra )
}

}

