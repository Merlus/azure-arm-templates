﻿configuration antest
{
    Import-DscResource -ModuleName xNetworking -ModuleVersion 2.12.0.0
    node localhost
    {
        xFirewall smb
        {
            Name = 'Allow SMB IN'
            Enabled = 'True'
            Direction = 'Inbound'
            Action = 'Allow'
            Profile = 'Domain,Private,Public'
            Description = 'Allow SMB In'
            Localport = '445'
            Protocol = 'TCP'
            RemoteAddress = 'Any'
        }
        xFirewall ping
        {
            Name = 'Allow Ping IN'
            Enabled = 'True'
            Direction = 'Inbound'
            Action = 'Allow'
            Profile = 'Domain,Private,Public'
            Description = 'Allow Ping In'
            Protocol =  'ICMPv4'    
            IcmpType =  '8'
        }
        xFirewall iperf
        {
            Name = 'Allow ntttcp IN'
            Enabled = 'True'
            Direction = 'Inbound'
            Action = 'Allow'
            Profile = 'Domain,Private,Public'
            Description = 'Allow ntttcp In'
            Localport = '5001-6000'
            Protocol = 'TCP'
            RemoteAddress = 'Any'
        }        
    }

}
