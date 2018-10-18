Class Composite.Questao Extends Composite.ElementoDoQuestionario
{

Method exibir() As %Status
{
    write !,$$$FormatText( "Questão %1",  ..descricao)
    quit $$$OK
}

}

