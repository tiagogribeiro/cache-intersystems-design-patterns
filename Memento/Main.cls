Class Memento.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    
    set texto = ##class(Texto).%New()
    do texto.escreverTexto(" Nenhuma noite por mais escura que seja pode impedir o amanhecer.  ")
    do texto.escreverTexto(" Não há derrota que derrube, quem nasceu para vencer. ")
    do texto.escreverTexto(" Quando a gente pensa que sabe todas as respostas, vem a vida e muda todas as perguntas.  ")
    
    write !,"~~~~~~~~~~~~~~~~"
    
    do texto.mostrarTexto()
    do texto.desfazerEscrita()
    
    write !,"~~~~~~~~~~~~~~~~"
    
    do texto.mostrarTexto()
    do texto.desfazerEscrita()
    
    write !,"~~~~~~~~~~~~~~~~"
    do texto.mostrarTexto()
    do texto.desfazerEscrita()
    
    write !,"~~~~~~~~~~~~~~~~"
    do texto.mostrarTexto()
    
    quit $$$OK
}

}

