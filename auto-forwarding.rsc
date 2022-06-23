# this script created to change dst-address in NAT forwarding
# for Mikrotik with dynamic IP Public
# edit pppoe-ISP to your interface
# edit RDP to your existing NAT forwarding
# Yes?

:local gwbaru [/ip address get [find interface="pppoe-ISP"] address];
:local existinggw [/ip firewall nat get [find comment="RDP"] dst-address];
:if ($gwbaru!= $existinggw) do={
      /ip firewall nat set [find comment="RDP"] dst-address=$gwbaru;
}
