#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'securerandom'
  s.version          = '0.2.0'
  s.summary          = 'SecureRandom Flutter Plugin'
  s.description      = <<-DESC
SecureRandom Flutter Plugin
                       DESC
  s.homepage         = 'https://ak.systems'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Akash Krishnan' => 'ak@aakay.net' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end
