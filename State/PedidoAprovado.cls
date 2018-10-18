Class State.PedidoAprovado Extends PedidoState
{

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Write !,"Aprovado."
	Quit $$$OK
}

}

