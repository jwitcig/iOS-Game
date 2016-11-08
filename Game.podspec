Pod::Spec.new do |s|
  s.name             = "Game"
  s.version          = "1.0.1"
  s.summary          = "Tools for Swift Game development."
  s.homepage         = "https://github.com/jwitcig/iOS-Game"
  s.license          = 'Code is MIT.'
  s.author           = { "Jonah" => "jwitcig@gmail.com" }
  s.source           = { :git => "https://github.com/jwitcig/iOS-Game.git", :tag => s.version }
  s.social_media_url = 'https://twitter.com/jonahwitcig'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Game/**/*'
  # s.resources = 'Pod/Assets/*'

  s.frameworks = 'UIKit'
  s.module_name = 'Game'

  s.dependency 'SwiftTools'
end
