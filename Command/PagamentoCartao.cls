Class Command.PagamentoCartao Extends PagamentoCommand
{

Method processarCompra(compra As Compra)
{
	Write !,"Processando no cartão. - Valor: "_compra.getValor()
}

}

