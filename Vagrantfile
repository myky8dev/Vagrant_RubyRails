hostname        = "workspace.dev"

# UTC        for Universal Coordinated Time
# EST        for Eastern Standard Time
# US/Central for American Central
# US/Eastern for American Eastern
server_timezone  = "Europe/Madrid"


# Set a local private network IP address.
# See http://en.wikipedia.org/wiki/Private_network for explanation
# You can use the following IP ranges:
#   10.0.0.1    - 10.255.255.254
#   172.16.0.1  - 172.31.255.254
#   192.168.0.1 - 192.168.255.254
server_ip             = "172.188.1.10"
server_cpus           = "1"   # Cores
server_memory         = "1536" # MB


Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.define "workspace" do |workspace|
  end

  config.vm.hostname = hostname

  # Create a static IP
  config.vm.network :private_network, ip: server_ip
  config.vm.network :forwarded_port, guest: 30, host: 3000

  # Use NFS for the shared folder
  config.vm.synced_folder ".", "/vagrant",
                          id: "core",
                          :nfs => true,
                          :mount_options => ['nolock,vers=3,udp,noatime']

  # If using VirtualBox
  config.vm.provider :virtualbox do |vb|
    vb.name = "Workspace"
    # Set server cpus
    vb.customize ["modifyvm", :id, "--cpus", server_cpus]

    # Set server memory
    vb.customize ["modifyvm", :id, "--memory", server_memory]

    # Set the timesync threshold to 10 seconds, instead of the default 20 minutes.
    # If the clock gets more than 15 minutes out of sync (due to your laptop going
    # to sleep for instance, then some 3rd party services will reject requests.
    vb.customize [ "guestproperty", "set", :id, "--timesync-threshold", 10000 ]
  end

  config.vm.provision "shell", path: "provision/config/preinstalls_config.sh"
  config.vm.provision "shell", path: "provision/scripts/base.sh", args: [server_timezone]
  config.vm.provision "shell", path: "provision/scripts/nginx.sh"
  config.vm.provision "shell", path: "provision/scripts/ruby_rails.sh"
  config.vm.provision "shell", path: "provision/scripts/db_installs.sh"
  config.vm.provision "shell", path: "provision/scripts/js_css_installs.sh"

end
