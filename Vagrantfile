Vagrant::Config.run do  | config |
	config.vm.box = "precise32"
 	config.vm.box_url = "http://files.vagrantup.com/precise32.box"
	
	config.vm.forward_port 80, 5080
	config.vm.forward_port 3306, 3307
	config.vm.share_folder "public_html" , "/home/vagrant/projects", "~/projects"
 
 	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = ["cookbooks"]
		chef.add_recipe "apt"
		chef.add_recipe "build-essential"
		chef.add_recipe "mysql::server"
		chef.add_recipe "nginx"		
		chef.add_recipe "php"
		chef.add_recipe "php::module_apc"
		chef.add_recipe "php::module_curl"
		chef.add_recipe "php::module_gd"
		chef.add_recipe "php::module_mysql"		
		chef.add_recipe "chef-php-extra::xdebug"
		chef.add_recipe "php-fpm"
		chef.json = {
			"mysql" => { 
				"server_root_password" 	=> "password",
				"allow_remote_root" 	=> true 
			},
			"xdebug" => {
				"remote_host" 	=> "192.168.1.102",
				"remote_port" 	=> 9998,
				"idekey" 		=> "netbeans-xdebug"
			}
	  	}
	end
end
