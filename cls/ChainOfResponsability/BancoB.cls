Class ChainOfResponsability.BancoB Extends ChainOfResponsability.BancoChain
{

Method efetuaPagamento(id As IDBanco) [ Final ]
{
	Write !,"Pagamento efetuado no banco B"
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Do ##super( ##class(IDBanco).#BANCOuB )
	Quit $$$OK
}

}

