#
# Be sure to run `pod lib lint ZWUtilityKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZWUtilityKit-sc'
  s.version          = '2.0.2'
  s.summary          = '从简化版做起经常用到的一些公共代码.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
经常用到的一些公共代码.为了方便使用进行的简单封装
                       DESC

  s.homepage         = 'https://github.com/EadkennyChan/ZWUtilityKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eadkennychan' => 'Eadkennychan@gmail.com' }
  s.source           = { :git => 'https://github.com/EadkennyChan/ZWUtility-supercode.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/EadkennyChan'
  s.requires_arc = true

    s.ios.deployment_target = '6.0'
    s.default_subspec = 'Foundation'

    s.subspec 'Foundation' do |foundation|
        foundation.vendored_frameworks ='*.framework'
    end

    s.subspec 'Network' do |network|
        network.ios.deployment_target = '6.0'
        network.source_files = 'ZWUtilityKit/Network/*.{h,m}'
        network.dependency 'Reachability', '~> 3.2'
        network.dependency 'JSONKit-ZW', '~>2.0.4'
        network.xcconfig = {
            'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
            #'OTHER_LDFLAGS' => '"$(inherited)" "-lxml2" "-objc"'
        }
        network.frameworks = 'CFNetwork'
    end

    s.frameworks = 'SystemConfiguration','Security','CoreLocation','QuartzCore','CFNetwork','MessageUI'

  # s.resource_bundles = {
  #   'ZWUtilityKit' => ['ZWUtilityKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
