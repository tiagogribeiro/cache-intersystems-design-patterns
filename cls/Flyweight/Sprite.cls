Class Flyweight.Sprite Extends Flyweight.SpriteFlyweight
{

Property imagem As Imagem;

Method %OnNew(nomeDaImagem As %String) As %Status [ Private ]
{
    set ..imagem = ##class(Imagem).%New( nomeDaImagem )
    quit $$$OK
}

Method desenharImagem(ponto As Ponto) As %Status
{
    do ..imagem.desenharImagem()
    write !,"No ponto:"_ponto.x_", "_ponto.y    
    
    quit $$$OK
}

}

