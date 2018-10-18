Class Proxy.Main Extends %RegisteredObject
{

Method %OnNew() As %Status
{
    set usuario = ##class(UsuarioProxy).%New()
    
    write !,usuario.getNumeroDeUsuarios()
    write !,usuario.getUsuariosConectados()
    
    quit $$$OK
}

}

