Class Adapter.TwitterAdapter Extends (%RegisteredObject, Adapter.ISocialAdapter)
{

Property twitter As Twitter [ Private ];

Method %OnNew(twitter As Twitter) As %Status
{
    set ..twitter = twitter
    quit $$$OK
}

Method send(mensagem As %String) As %Status
{
    do ..twitter.send( mensagem )
    quit $$$OK
}

}

