Class Prototype.FiestaPrototype Extends (CarroPrototype, %RegisteredObject)
{

Method %OnNew(fiestaPrototype As FiestaPrototype = "") As %Status [ Private ]
{
    if ($isObject(fiestaPrototype)){
        set ..valorCompra = fiestaPrototype.getValorCompra()
    } else {
        set ..valorCompra = 0.0
    }
    quit $$$OK
}

Method clonar() As FiestaPrototype
{
    return ..%New( ##this )
}

Method exibirInformacao()
{
    quit "Modelo: Fiesta - Valor:"_..getValorCompra()
}

}

