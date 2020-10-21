#
# Be sure to run `pod lib lint GoFunUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GoFunUtil'
  s.version          = '0.1.0'
  s.summary          = 'Content GFDevice and GFUDID'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mj230816/GoFunUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mj230816' => 'ext-songqian@shouqiev.com' }
  s.source           = { :git => 'https://github.com/mj230816/GoFunUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GoFunUtil/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GoFunUtil' => ['GoFunUtil/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # GFDevice
  s.subspec 'GFDevice' do |device|
      device.source_files = 'GoFunUtil/Classes/GFDevice/*'
      device.frameworks = 'UIKit'
  end
  
  s.subspec 'GFUDID' do |udid|
      udid.source_files = 'GoFunUtil/Classes/GFUDID/*'
      udid.frameworks = 'UIKit'
      udid.dependency 'KeychainAccess'
      udid.dependency 'CryptoSwift', '~> 1.3.2'
  end
  
end
