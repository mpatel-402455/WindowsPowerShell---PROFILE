# Profiel for FirstName LastName
Write-Host "Profile Path: `n$PSHOME" -ForegroundColor Green
    #C:\Windows\system32\WindowsPowerShell\v1.0
function prompt 
    {
        if ([System.IntPtr]::Size -eq 8) 
            {
                $size = '64 bit'
            }
    
        else 
            {
                $size = '32 bit'
            }

        $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
        $secprin = New-Object Security.Principal.WindowsPrincipal $currentUser
        
        if ($secprin.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
            {
                $admin = 'Administrator'
            }
        
        else 
            {
                $admin = 'non-Administrator'
            }
        
        $host.ui.RawUI.WindowTitle = "$admin $size $(get-location)"
        [Environment]::UserName +">"
}

#Write-Host "Adding Citrix Powershell Snapin..." -ForegroundColor Green
#Add-PSSnapin Citrix.XenApp.Commands
#Get-PSSnapin
#ASPN Citrix*
#Import-Module Citrix.XenApp.Commands.Remoting
#[Environment]::UserName


CD C:\DATA\MyScripts
