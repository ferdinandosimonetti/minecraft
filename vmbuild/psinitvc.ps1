$creds = import-clixml creds.xml
$src = "https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.ova"
$ova = "ubuntu-18.04-server-cloudimg-amd64.ova"
Start-BitsTransfer -Source $src -Destination $ova

$name = "ubuntu1804template"
$viserver = "192.168.0.111"
connect-viserver -server $viserver -Credential $creds
$vmhost = get-vmhost | select -First 1
$network = "VM Network"
$ds = get-datastore -Name "datastore1"
$dsf = "thin"
$ovfConfig = Get-OvfConfiguration $ova
$ovfConfig.NetworkMapping.VM_Network.Value = $network
Import-VApp -Source $ova -VMHost $vmhost -OvfConfiguration $ovfConfig -datastore $ds -DiskStorageFormat $dsf -name $name
Get-vm $name | New-AdvancedSetting -name disk.EnableUUID -Value 'TRUE'
Get-vm $name | Set-VM -numcpu 4 -memorygb 4 -Confirm:$false
Get-vm $name | Set-VM -ToTemplate -Confirm:$false