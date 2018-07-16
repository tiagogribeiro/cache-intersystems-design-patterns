Class State.Pedido Extends %RegisteredObject
{

Property estado As PedidoState [ Final, Private ];

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Set ..estado = ##class(PedidoState).%New()
	Write !,"Normal."
	Quit $$$OK
}

Method aprovado() As PedidoState [ Final ]
{
	Set ..estado = ..estado.aprovado()
}

Method cancelado() As PedidoState [ Final ]
{
	Set ..estado = ..estado.cancelado()
}

Method carregado() As PedidoState [ Final ]
{
	Set ..estado = ..estado.carregado()
}

}

