Class State.PedidoState Extends %RegisteredObject
{

Method carregado() As PedidoCarregado [ Final ]
{
	Quit ##class(PedidoCarregado).%New()
}

Method aprovado() As PedidoAprovado [ Final ]
{
	Quit ##class(PedidoAprovado).%New()
}

Method cancelado() As PedidoCancelado [ Final ]
{
	Quit ##class(PedidoCancelado).%New()
}

}

