Class Facade.api.terceiro.SistemaDeAudio Extends %RegisteredObject
{

Method configurar() As %Status
{
    write !,"Frequencia configurada."
    quit $$$OK
}

Method configurarVolume() As %Status
{
    write !,"Volume configurada."
    quit $$$OK
}

Method configurarCanais() As %Status
{
    write !,"Canais configurada."
    quit $$$OK
}

Method reproduzir() As %Status
{
    write !,"Reproduzindo.... (audio)"
    quit $$$OK
}

}

