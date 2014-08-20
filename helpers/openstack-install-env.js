//
// javascript helper program to generate input parameter 
// values for vasabilab's openstack installation script
// copyright 2014 kasidit chanchio
//
function genparam() {

  var create = document.getElementById('create');
  create.addEventListener('click', writeparams, false);
}

var textFile = null;

function makeTextFile (text) {
    var data = new Blob([text], {type: 'text/plain'});

    // If we are replacing a previously generated file we need to
    // manually revoke the object URL to avoid memory leaks.
    if (textFile !== null) {
      window.URL.revokeObjectURL(textFile);
    }

    textFile = window.URL.createObjectURL(data);
    return textFile;

}

function writeparams() {

      var textbox = document.getElementById('DomainName');
      var outputline; 
      var textstr1;  

      // OPS_MYSQL_PASS
      var alltext = "# This shell script file contains parameter definitions \r\n# for the vasabilab's OpenStack Installer. It is generated by the compenv.js \r\n# program in the OpenStackInstaller/helpers directory of OpenStackInstaller.tar. \r\n#\r\n"; 

      alltext = alltext.concat("# Change the values of mysql root password, admin user password\r\n# and demo user passwords below as you like. \r\n#\r\n"); 
      alltext = alltext.concat("export OPS_MYSQL_PASS=yourpassword\r\n"); 
      alltext = alltext.concat("export DEMO_PASS=yourDemoUserPassword\r\n"); 
      alltext = alltext.concat("export ADMIN_PASS=yourAdminUserPassword\r\n"); 
      alltext = alltext.concat("export HYPERVISOR=qemu\r\n"); 
      alltext = alltext.concat("export INIT_IMAGE_LOCATION=http:\\\\/\\\\/cdn.download.cirros-cloud.net\\\\/0.3.2\\\\/cirros-0.3.2-x86_64-disk.img\r\n"); 
      alltext = alltext.concat("#export INIT_IMAGE_LOCATION=http:\\\\/\\\\/localrepo\\\\/images\\\\/cirros-0.3.2-x86_64-disk.img\r\n"); 
      alltext = alltext.concat("export INIT_IMAGE_NAME=cirros-0.3.2-x86_64-disk\r\n"); 
      alltext = alltext.concat("#\r\n# ---- gateway host ---- \r\n#\r\n"); 

      // DomainName
      outputline = "export DOMAINNAME=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // NatIntranetCidr
      textbox = document.getElementById('NatIntranetCidr');
      outputline = "export NAT_INTRANET_CIDR=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // VpnIpRange 
      textbox = document.getElementById('VpnIpRange');
      outputline = "export VPN_IP_RANGE=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // LocalRepo 
      textbox = document.getElementById('LocalRepo');
      outputline = "export LOCAL_REPO=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // LocalSecurityRepo 
      textbox = document.getElementById('LocalSecurityRepo');
      outputline = "export LOCAL_SECURITY_REPO=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // GatewayIp 
      textbox = document.getElementById('GatewayIp');
      outputline = "export GATEWAY_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      alltext = alltext.concat("#\r\n# ---- controller host ---- \r\n#\r\n"); 

      // ControllerIp 
      textbox = document.getElementById('ControllerIp');
      outputline = "export CONTROLLER_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);
      // ManagementNetworkNetmask 
      textbox = document.getElementById('ManagementNetworkNetmask');
      outputline = "export MANAGEMENT_NETWORK_NETMASK=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // ManagementNetwork 
      textbox = document.getElementById('ManagementNetwork');
      outputline = "export MANAGEMENT_NETWORK=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // ManagementNetwork 
      textbox = document.getElementById('BroadcastAddress');
      outputline = "export MANAGEMENT_BROADCAST_ADDRESS=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // DnsIp 
      textbox = document.getElementById('DnsIp');
      outputline = "export DNS_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      alltext = alltext.concat("#\r\n# ---- network host ---- \r\n#\r\n"); 
      // NetworkIp 
      textbox = document.getElementById('NetworkIp');
      outputline = "export NETWORK_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // DataTunnelNetworkNodeIp 
      textbox = document.getElementById('DataTunnelNetworkNodeIp');
      outputline = "export DATA_TUNNEL_NETWORK_NODE_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // DataNetworkNetmask 
      textbox = document.getElementById('DataNetworkNetmask');
      outputline = "export DATA_TUNNEL_NETWORK_NETMASK=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // DataNetworkAddress 
      textbox = document.getElementById('DataNetworkAddress');
      outputline = "export DATA_TUNNEL_NETWORK_ADDRESS=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // ExternalCidr 
      textbox = document.getElementById('ExternalCidr');
      outputline = "export EXTERNAL_CIDR=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // StartFloatingIp 
      textbox = document.getElementById('StartFloatingIp');
      outputline = "export START_FLOATING_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // EndFloatingIp 
      textbox = document.getElementById('EndFloatingIp');
      outputline = "export END_FLOATING_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      alltext = alltext.concat("#\r\n# ---- compute host ---- \r\n#\r\n"); 
      // ComputeIp 
      textbox = document.getElementById('ComputeIp');
      outputline = "export COMPUTE_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // DataTunnelComputeNodeIp 
      textbox = document.getElementById('DataTunnelComputeNodeIp');
      outputline = "export DATA_TUNNEL_COMPUTE_NODE_IP=";
      textstr1   = textbox.value; 

      outputline = outputline.concat(textstr1);
      outputline = outputline.concat("\r\n");

      alltext = alltext.concat(outputline);

      // create file
      var link = document.getElementById('downloadlink');
      link.href = makeTextFile(alltext);
      link.style.display = 'block';
}

window.addEventListener("load", genparam, false);
