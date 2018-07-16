Class Observer.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    set dados = ##class(DadosSubject).%New()
    do dados.attach( ##class(TabelaObserver).%New( dados ))
    do dados.attach( ##class(PorcentoObserver).%New( dados ))
    
    do dados.setState( ##class(Dados).%New(7,3,1))
    do dados.setState( ##class(Dados).%New(2,3,4))
    
    quit $$$OK
}

}

