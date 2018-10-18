Class State.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    #dim pedido As Pedido
    
    Set pedido = ##class(Pedido).%New()
        
    Do pedido.aprovado()
    Do pedido.carregado()
    Do pedido.cancelado()
    Do pedido.cancelado()
    Do pedido.carregado()
    Do pedido.aprovado()
}

}

