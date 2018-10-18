Class Prototype.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    #dim palioUsado,palioNovo As Prototype.PalioPrototype
    set palioNovo = ##class(Prototype.PalioPrototype).%New()
    do palioNovo.setValorCompra( 15000 )
    
    set palioUsado = palioNovo.clonar()
    do palioUsado.setValorCompra( 8000 )
    
    write !,palioNovo.exibirInformacao()
    write !,palioUsado.exibirInformacao()
    
    quit $$$OK
}

}

