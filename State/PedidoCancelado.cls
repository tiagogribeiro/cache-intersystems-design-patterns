Class State.PedidoCancelado Extends PedidoState
{

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Write !,"Cancelado"
	
	Quit $$$OK
}

}

