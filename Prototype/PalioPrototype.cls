Class Prototype.PalioPrototype Extends (CarroPrototype, %RegisteredObject)
{

Method %OnNew(palioPrototype As PalioPrototype = "") As %Status [ Private ]
{
    if ($isObject(palioPrototype)){
        set ..valorCompra = palioPrototype.getValorCompra()
    } else {
        set ..valorCompra = 0.0
    }
    quit $$$OK
}

Method clonar() As PalioPrototype
{
    return ..%New( ##this )
}

Method exibirInformacao()
{
    quit "Modelo: Palio - Valor:"_..getValorCompra()
}

}

