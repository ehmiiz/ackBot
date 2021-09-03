<#
.NOTES

    token: xD
    perm: 2147736640
    clientid: 882978925859467305

    Invite URL:
    https://discordapp.com/oauth2/authorize?&client_id=882978925859467305&scope=bot&permissions=2147736640

    Server ID: 385174884868816906
    #
#>

Import-Module PoshBot

$pbc = New-PoshBotConfiguration
$pbc.BotAdmins = @('Ehmiiz')

$backendConfig = @{
    Name     = 'DiscordBackend'
    Token    = 'xD'
    ClientId = '882978925859467305'
    GuildId  = '816387235564748861'
}
$backend = New-PoshBotDiscordBackend -Configuration $backendConfig


$bot = New-PoshBotInstance -Configuration $pbc -Backend $backend
$bot | Start-PoshBot -Verbose
