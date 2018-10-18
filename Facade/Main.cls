Class Facade.Main Extends %RegisteredObject
{

Method %OnNew() As %Status [ Private ]
{
    
    set sistemas = ##class(Facade.SistemasFacade).%New()
    
    write !,"Iniciando sistema de som."
    do sistemas.reproduzirSom()
    
    write !,"Exibindo imagem."
    do sistemas.reproduzirImagem()       
    
    quit $$$OK
}

}

