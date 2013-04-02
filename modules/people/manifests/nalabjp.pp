class people::nalabjp {
  include skype
  include chrome
  include mongodb
  include dropbox
  include alfred

  package {
    [
      # install by homebrew
      'wget',
    ]:
  }

  package {
    # install by URL
    'XtraFinder':
      source => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
      provider => pkgdmg;
    
    'MacVim':
      source => "http://macvim-kaoriya.googlecode.com/files/macvim-kaoriya-20121213.dmg",
      provider => pkgdmg;
  }

  $home     = "/Users/${::luser}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"

  # git-clone dotfiles on github
  #repository { $dotfiles
  #  source => "nalabjp/dotfiles"
  #  require => File[$src]
  #}

  # install
  #exec { "sh ${dotfiles}/install.sh":
  #  cwd => $dotfiles,
  #  creates => "${home}/.bash_profile",
  #  require => Repository[$dotfiles],
  #}
}
