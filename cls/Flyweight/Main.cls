Class Flyweight.Main Extends %RegisteredObject
{

Method %OnNew() As %Status [ Private ]
{
    set factory = ##class(FlyweightFactory).%New()
    do factory.getFlyweight( ##class(FlyweightFactory).#JOGADOR ).desenharImagem( ##class(Ponto).%New(5,3) )
    do factory.getFlyweight( ##class(FlyweightFactory).#INIMIGOu1 ).desenharImagem( ##class(Ponto).%New(1,2) )
    do factory.getFlyweight( ##class(FlyweightFactory).#INIMIGOu2 ).desenharImagem( ##class(Ponto).%New(4,3) )
    do factory.getFlyweight( ##class(FlyweightFactory).#INIMIGOu3 ).desenharImagem( ##class(Ponto).%New(7,8) )
    do factory.getFlyweight( ##class(FlyweightFactory).#CENARIOu1 ).desenharImagem( ##class(Ponto).%New(0,2) )
    do factory.getFlyweight( ##class(FlyweightFactory).#CENARIOu2 ).desenharImagem( ##class(Ponto).%New(7,2) )
    
    quit $$$OK
}

}

