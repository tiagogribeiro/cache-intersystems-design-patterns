Class Facade.SistemasFacade Extends %RegisteredObject
{

Property sistemaDeAudio As Facade.api.terceiro.SistemaDeAudio [ Private ];

Property sistemaImagem As Facade.api.terceiro.SistemaDeImagem [ Private ];

Method %OnNew() As %Status [ Private ]
{
    set ..sistemaDeAudio = ##class(Facade.api.terceiro.SistemaDeAudio).%New()
    do ..sistemaDeAudio.configurar()
    do ..sistemaDeAudio.configurarCanais()
    do ..sistemaDeAudio.configurarVolume()
    
    set ..sistemaImagem = ##class(Facade.api.terceiro.SistemaDeImagem).%New()
    do ..sistemaImagem.configurarCores()
    do ..sistemaImagem.configurarResolucao()
    
    quit $$$OK
}

Method reproduzirSom() As %Status
{
    do ..sistemaDeAudio.reproduzir()
    quit $$$OK
}

Method reproduzirImagem() As %Status
{
    do ..sistemaImagem.reproduzir()
    quit $$$OK
}

}

