/// “Fornecer um substituto ou marcador da localização de outro objeto para controlar o acesso a esse objeto.”
/// GAMMA, Erich et al. Padrões de Projeto: Soluções reutilizáveis de software orientado a objetos.
Class Proxy.UsuarioProxy Extends Usuario
{

Method %OnNew() As %Status
{
    // Implementações necessárias para o funcionamento do proxy.
    // E o objeto que utiliza Usuário irá aceitar o Proxy sem problemas.
    
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

