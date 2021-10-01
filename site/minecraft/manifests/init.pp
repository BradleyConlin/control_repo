class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'http://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar',
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.text':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service'
  }
  
}
