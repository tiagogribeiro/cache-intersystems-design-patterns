Class State.PedidoCarregado Extends PedidoState
{

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Write !,"Carregado."
	Quit $$$OK
}

}

