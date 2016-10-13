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
            Name = 'Allow iperf IN'
            Enabled = 'True'
            Direction = 'Inbound'
            Action = 'Allow'
            Profile = 'Domain,Private,Public'
            Description = 'Allow iperf In'
            Localport = '5201'
            Protocol = 'TCP'
            RemoteAddress = 'Any'
        }  
    }

}
