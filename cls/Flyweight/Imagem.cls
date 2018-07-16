Class Flyweight.Imagem Extends %RegisteredObject
{

Property nomeDaImagem As %String [ Private ];

Method %OnNew(imagem As %String) As %Status [ Private ]
{
    set ..nomeDaImagem = imagem
    quit $$$OK
}

Method desenharImagem() As %Status
{
    write !,..nomeDaImagem_" desenhada."
    quit $$$OK
}

}

