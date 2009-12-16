# /etc/puppet/modules/apt/manifests/init.pp

class apt {

	package { apt:
		ensure	=> latest,
	}

	file { "/etc/apt/sources.list":
		mode	=> 644,
		owner	=> root,
		group	=> root,
		source	=> "puppet:///apt/sources.list",
		require	=> Package["apt"],
	}
}
