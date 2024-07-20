#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint unique_id.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'unique_id'
  s.version          = '1.0.1'
  s.summary          = 'A new plugin for getting the Unique ID.'
  s.description      = <<-DESC
  A new Flutter plugin for getting the Unique ID.
                       DESC
  s.homepage         = 'https://github.com/ShareAnTalk/flutter-unique-id'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'ShareInvest Corp.' => 'prophet0915@gmail.com' }
  s.source           = { :git => 'https://github.com/ShareAnTalk/flutter-unique-id.git', :tag => s.version.to_s }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  s.dependency 'KeychainAccess'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
