#
# Be sure to run `pod lib lint MyTestModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyTestModule'
  s.version          = '0.1.1'
  s.summary          = 'A short description of MyTestModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhangchenzhuo/MyTestModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zcz' => 'zczzhangchenzhuo@gmail.com' }
  s.source           = { :git => 'https://github.com/zhangchenzhuo/MyTestModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_versions = ['5.0']
  s.ios.deployment_target = '16.0'

  #s.source_files = 'MyTestModule/Classes/**/*'
  s.subspec 'Core' do |ss|
    ss.source_files = 'MyTestModule/Classes/Core/**/*'
  end
  
  s.subspec 'Models' do |ss|
    ss.source_files = 'MyTestModule/Classes/Models/**/*'
    ss.dependency 'MyTestModule/Core'
  end

  s.subspec 'Views' do |ss|
    ss.source_files = 'MyTestModule/Classes/Views/**/*'
  end

  s.subspec 'ViewModels' do |ss|
    ss.source_files = 'MyTestModule/Classes/ViewModels/**/*'
    ss.dependency 'MyTestModule/Core'
    ss.dependency 'MyTestModule/Models'
  end

  s.subspec 'ViewControllers' do |ss|
    ss.source_files = 'MyTestModule/Classes/ViewControllers/**/*'
    ss.dependency 'MyTestModule/Views'
    ss.dependency 'MyTestModule/ViewModels'
  end
  
  # s.resource_bundles = {
  #   'MyTestModule' => ['MyTestModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
