<#
    Funny Discord Modules for AckBot

#>
function Get-BreakingBadQuote {
    [CmdletBinding()]
    param (
     # $Number   
    )
    begin {
        $Quote = Invoke-WebRequest -Uri https://breaking-bad-quotes.herokuapp.com/v1/quotes  -Method Get
        $return = $Quote.content | ConvertFrom-Json
    }
    end {
        return "$($return.quote)`n- $($return.author)"
    }
}