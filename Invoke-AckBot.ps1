<#
.NOTES

    token: ODgyOTc4OTI1ODU5NDY3MzA1.YTDQNA.BrO87Oi_jLNLUsCza-AcoEJ7BGM
    perm: 2147736640
    clientid: 882978925859467305

    Invite URL:
    https://discordapp.com/oauth2/authorize?&client_id=882978925859467305&scope=bot&permissions=2147736640

    Server ID: 385174884868816906
#>

Import-Module PoshBot

$pbc = New-PoshBotConfiguration
$pbc.BotAdmins = @('Ehmiiz')

$backendConfig = @{
    Name     = 'DiscordBackend'
    Token    = 'ODgyOTc4OTI1ODU5NDY3MzA1.YTDQNA.BrO87Oi_jLNLUsCza-AcoEJ7BGM'
    ClientId = '882978925859467305'
    GuildId  = '816387235564748861'
}
$backend = New-PoshBotDiscordBackend -Configuration $backendConfig


$bot = New-PoshBotInstance -Configuration $pbc -Backend $backend
$bot | Start-PoshBot -Verbose