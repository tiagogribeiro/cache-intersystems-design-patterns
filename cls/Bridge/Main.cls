Class Bridge.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    #dim janela As JanelaAbstrata;
    set janela = ##class(JanelaDialogo).%New( ##class(JanelaLinux).%New()  )
    do janela.desenhar()
        
    
    quit $$$OK
}

}

