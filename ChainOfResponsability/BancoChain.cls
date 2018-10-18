Class ChainOfResponsability.BancoChain Extends %RegisteredObject [ Abstract ]
{

Property next As BancoChain [ Final, Private ];

Property identificadorDoBanco As %Integer [ Final, Private ];

Method %OnNew(id As IDBanco) As %Status [ Private, ServerOnly = 1 ]
{
	Set ..next = $$$NULLOID
	Set ..identificadorDoBanco = id	
	Quit $$$OK
}

Method setNext(forma As BancoChain) [ Final ]
{
	if (..next = $$$NULLOID){
		Set ..next = forma
	} else {
		Do ..next.setNext( forma )
	}
}

Method efetuarPagamento(id As IDBanco)
{
	if (..podeEfetuarPagamento( id )){
		Do ..efetuaPagamento()
	} else {
		if (..next = $$$NULLOID){
			Throw ##class(%Exception.General).%New("Banco para pagamento não encontrado.")
		}
		Do ..next.efetuarPagamento( id )
	}
}

Method podeEfetuarPagamento(id As IDBanco) As %Boolean [ Final ]
{
	if (..identificadorDoBanco = id ){
		Quit $$$YES
	}
	Quit $$$NO
}

Method efetuaPagamento()
{
	Quit $$$OK
}

}

