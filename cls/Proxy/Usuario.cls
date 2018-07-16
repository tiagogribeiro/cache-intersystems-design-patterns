Class Proxy.Usuario Extends %RegisteredObject
{

Property quantidadeDeUsuarios As %Integer;

Property usuariosConectados As %Integer;

Method %OnNew() As %Status
{
    set ..quantidadeDeUsuarios = $random(999)
    set ..usuariosConectados = $random(999)
    quit $$$OK
}

Method getNumeroDeUsuarios() As %Integer
{
    quit ..quantidadeDeUsuarios
}

Method getUsuariosConectados() As %Integer
{
    quit ..usuariosConectados
}

}

