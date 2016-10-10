# disable Windows firewall
Get-NetFirewallProfile | Set-NetFirewallProfile -Enabled False