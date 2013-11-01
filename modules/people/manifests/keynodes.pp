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
    ]:
  }
}
