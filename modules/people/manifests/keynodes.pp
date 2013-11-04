class people::keynodes {
  # Puppetfile で定義したもの
  include alfred
  include dropbox
  include evernote
  include firefox
  include chrome
  include macvim_kaoriya

  # Sublime Text2
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }
  #sublime_text_2::package { 'ConvertToUTF8':
  #  source => 'seanliang/ConvertToUTF8'
  #}

  include iterm2::stable
  include skype
  include virtualbox
  include vagrant

  # homebrew でインストールするもの
  package {
    [
      'redis',
      'icu4c',
      'mysql',
      'tree',
    ]:
  }

  # GoogleJapaneseInput
  package {
    'GoogleJapaneseInput':
      source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
  }
}
