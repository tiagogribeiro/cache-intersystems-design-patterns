Class Visitor.Visitable Extends %RegisteredObject
{

Method accept(visitor As Visitor.Visitor) As %Status
{
    do visitor.visit( ##this )
    quit $$$OK
}

}

