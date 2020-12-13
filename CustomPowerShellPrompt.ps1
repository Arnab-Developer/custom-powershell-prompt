# Add this code to PowerShell Core profile.
# This function has been called automatically by PowerShell.
function prompt()
{
    $customPrompt = `
        [environment]::newline + "" + `
        $env:computername + " | " + `
        $env:username + " | " + `
        $(get-date -format "dd MMMM, dddd hh:mm tt") + " | " + `
        $executioncontext.sessionstate.path.currentlocation + "" + `
        [environment]::newline + "" + "> "
	
    $customPrompt
}