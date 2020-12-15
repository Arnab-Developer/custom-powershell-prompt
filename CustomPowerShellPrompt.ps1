# Add this code to PowerShell Core profile.
Import-Module posh-git
	
$customPrompt = `
    [environment]::newline + "" + `
	$env:computername + " | " + `
    $env:username + " | " + `
    $(get-date -format "dd MMMM, dddd hh:mm tt") + " |"

$GitPromptSettings.DefaultPromptPrefix.Text = '$customPrompt '
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n'