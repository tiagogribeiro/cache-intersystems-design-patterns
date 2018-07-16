Class Composite.Bloco Extends ElementoDoQuestionario
{

Property elementos As list Of ElementoDoQuestionario;

Method exibir() As %Status
{
    #dim elemento As Composite.ElementoDoQuestionario
    #dim indice As %String =""
    
    write !,$$$FormatText("Bloco %1", ..descricao)
    for {
        set elemento = ..elementos.GetNext(.indice)
        quit:(indice="")
        
        do elemento.exibir()
    }
    quit $$$OK
}

Method adicionar(elemento As Composite.ElementoDoQuestionario) As %Status
{
    quit ..elementos.Insert( elemento )
}

Method remover(elemento As Composite.ElementoDoQuestionario) As %Status
{
    #dim elementoId As %String
    set elementoId =  ..elementos.FindOref( elemento )
    if (elementoId'=""){
        quit ..elementos.RemoveAt( elementoId )
    }
    quit $$$OK
}

}

