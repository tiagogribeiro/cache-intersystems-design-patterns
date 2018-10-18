Class Composite.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    set blocaA = ##class(Bloco).%New( "A) Formação Educacional" )
    set questao1 = ##class(Questao).%New( "Qual formação" )
    set questao2 = ##class(Questao).%New( "Pretente fazer alguma pós-gradução?" )
    
    do blocaA.adicionar( questao1 )
    do blocaA.adicionar( questao2 )       
    
    set blocoRaiz = ##class(Bloco).%New( "Inicio ")
    do blocoRaiz.adicionar( blocaA )
    do blocoRaiz.exibir()
     
    quit $$$OK
}

}

