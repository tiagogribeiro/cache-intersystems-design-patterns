Class Builder.CelularBuilder Extends %RegisteredObject
{

Property modelo As %String [ Final, Private ];

Property nome As %String [ Final, Private ];

Method comNome(nome As %String) As CelularBuilder [ Final ]
{
    Set ..nome = nome
    Quit ##this
}

Method comModelo(modelo As %String) As CelularBuilder [ Final ]
{
    Set ..modelo = modelo
    Quit ##this
}

Method build() As Celular [ Final ]
{
    quit ##class(Celular).%New( ..modelo, ..nome )
}

}

