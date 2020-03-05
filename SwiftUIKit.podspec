# Run `pod lib lint SwiftUIKit.podspec' to ensure this is a valid spec.

Pod::Spec.new do |s|
  s.name             = 'SwiftUIKit'
  s.version          = '0.1.0'
  s.swift_versions   = ['5.1']
  s.summary          = 'SwiftUIKit contains extra struff for SwiftUI.'

  s.description      = <<-DESC
  SwiftUIKit contains extra struff for SwiftUI.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/SwiftUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/SwiftUIKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.1'
  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/**/*.swift'
end