Class Flyweight.FlyweightFactory Extends %RegisteredObject
{

Parameter JOGADOR = 1;

Parameter INIMIGOu1 = 2;

Parameter INIMIGOu2 = 3;

Parameter INIMIGOu3 = 4;

Parameter CENARIOu1 = 5;

Parameter CENARIOu2 = 6;

Property flyweights As list Of SpriteFlyweight;

Method %OnNew() As %Status [ Private ]
{
    set ..flyweights = ##class(%ListOfObjects).%New()
    do ..flyweights.Insert( ##class(Sprite).%New( "jogador.png" ))
    do ..flyweights.Insert( ##class(Sprite).%New( "inimigo1.png" ))
    do ..flyweights.Insert( ##class(Sprite).%New( "inimigo2.png" ))
    do ..flyweights.Insert( ##class(Sprite).%New( "inimigo3.png" ))
    do ..flyweights.Insert( ##class(Sprite).%New( "cenario1.png" ))
    do ..flyweights.Insert( ##class(Sprite).%New( "cenario2.png" ))
    
    quit $$$OK
}

Method getFlyweight(jogador As %Integer) As SpriteFlyweight
{
    quit ..flyweights.GetAt( jogador )
}

}

