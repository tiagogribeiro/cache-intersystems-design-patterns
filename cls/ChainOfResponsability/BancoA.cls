Class ChainOfResponsability.BancoA Extends ChainOfResponsability.BancoChain
{

Method efetuaPagamento(id As IDBanco) [ Final ]
{
	Write !,"Pagamento efetuado no banco A"
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Do ##super( ##class(IDBanco).#BANCOuA )
	Quit $$$OK
}

}

