# minecraft
Minecraft Java server + Geyser + Floodgate configurations and .jar files

to deploy (with govc) adapting instructions found here:
https://blah.cloud/infrastructure/using-cloud-init-for-vm-templating-on-vsphere/
and the caveats there:
https://vmsysadmin.wordpress.com/2019/09/14/getting-started-with-govc-on-windows/

new alternative, Windows-based
https://vmsysadmin.wordpress.com/2019/09/20/cloning-ubuntu-18-04-lts-cloud-image-on-vmware-using-cloud-init/

Da aggiungere dopo il clone da template 
Get-vm ubuntu1804template | New-AdvancedSetting -name disk.EnableUUID -Value 'TRUE'
Get-vm ubuntu1804template | Set-VM -numcpu 4 -memorygb 4 -Confirm:$false 
Get-vm ubuntu1804template | Set-VM -ToTemplate -Confirm:$false

