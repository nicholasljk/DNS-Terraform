provider "infoblox" {
  username = "admin"
  password = "infoblox"
  server = "172.16.133.46"
}

resource "infoblox_network_view" "demo_network_view"{
  network_view_name="demo1"
  tenant_id="test"
}

/*
resource "infoblox_network" "demo_network"{
  network_view_name="demo1"
  network_name="ex1"
  cidr="10.10.20.0/24"
  tenant_id="test"
}

resource "infoblox_ip_allocation" "demo_allocation"{
  network_view_name="demo1"
  vm_name="terraform-demo"
  cidr="${infoblox_network.demo_network.cidr}"
  tenant_id="test"  
}


resource "infoblox_ip_association" "demo_associate"{
  network_view_name="demo1"
  vm_name="${infoblox_ip_allocation.demo_allocation.vm_name}"
  cidr="${infoblox_network.demo_network.cidr}"
  mac_addr ="${vsphere_virtual_machine.vm.network_interface.0.mac_address}"
  ip_addr="${infoblox_ip_allocation.demo_allocation.ip_addr}"
  vm_id ="${vsphere_virtual_machine.vm.0.id}" 
  tenant_id="test"
}
*/