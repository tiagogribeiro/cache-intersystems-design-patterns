Class ChainOfResponsability.BancoD Extends ChainOfResponsability.BancoChain
{

Method efetuaPagamento(id As IDBanco) [ Final ]
{
	Write !,"Pagamento efetuado no banco D"
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Do ##super( ##class(IDBanco).#BANCOuD )
	Quit $$$OK
}

}

