Class Prototype.CarroPrototype [ Abstract ]
{

Property valorCompra As %Double [ Private ];

Method clonar() As CarroPrototype
{
}

Method getValorCompra() As %Double
{
    quit ..valorCompra
}

Method setValorCompra(valorCompra As %Double) As %Status
{
    set ..valorCompra = valorCompra
    quit $$$OK
}

}

