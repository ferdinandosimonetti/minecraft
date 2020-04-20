$creds = Get-Credential
$src = "https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.ova"
$ova = "ubuntu-18.04-server-cloudimg-amd64.ova"
Start-BitsTransfer -Source $src -Destination $ova

$name = "ubuntu1804template"
connect-viserver -server 192.168.0.111 -Credential $creds
$vmhost = get-vmhost | select -First 1
$network = "VM Network"
$ds = get-datastore -Name "datastore1"
$dsf = "thin"
$ovfConfig = Get-OvfConfiguration $ova
$ovfConfig.NetworkMapping.VM_Network.Value = $network
Import-VApp -Source $ova -VMHost $vmhost -OvfConfiguration $ovfConfig -datastore $ds -DiskStorageFormat $dsf -name $name