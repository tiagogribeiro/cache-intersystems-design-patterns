Class Command.PagamentoBoleto Extends PagamentoCommand
{

Method processarCompra(compra As Compra)
{
	Write !,"Processando o boleto. - Valor:"_compra.getValor()
}

}

