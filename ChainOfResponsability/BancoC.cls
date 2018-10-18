Class ChainOfResponsability.BancoC Extends ChainOfResponsability.BancoChain
{

Method efetuaPagamento(id As IDBanco) [ Final ]
{
	Write !,"Pagamento efetuado no banco C"
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Do ##super( ##class(IDBanco).#BANCOuC )
	Quit $$$OK
}

}

