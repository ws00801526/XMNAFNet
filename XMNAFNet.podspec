#
# Be sure to run `pod lib lint XMNAFNet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XMNAFNet'
  s.version          = '0.6.0'
  s.summary          = '基于AFNetworking封装的网络请求类库'
  s.homepage         = 'https://github.com/ws00801526/XMNAFNet'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XMFraker' => '3057600441@qq.com' }
  s.source           = { :git => 'https://github.com/ws00801526/XMNAFNet.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Core','Tools','Cache'

  s.subspec 'Core' do |ss|
    ss.source_files = 'XMNAFNet/Classes/Core/*.{h,m}'
    ss.dependency 'AFNetworking', '~> 4.0'
#    ss.dependency 'AFNetworking/Security', '~> 4.0'
#    ss.dependency 'AFNetworking/Reachability', '~> 4.0'
#    ss.dependency 'AFNetworking/NSURLSession', '~> 4.0'
#    ss.dependency 'AFNetworking/Serialization', '~> 4.0'
  end

  s.subspec 'Tools' do |ss|
    ss.source_files = 'XMNAFNet/Classes/Tools/*.{h,m}'
    ss.dependency 'XMNAFNet/Core'
    ss.dependency 'RealReachability'
  end

  s.subspec 'Cache' do |ss|
    ss.source_files = 'XMNAFNet/Classes/Cache/*.{h,m}'
    ss.dependency 'XMNAFNet/Core'
    ss.dependency 'YYCache'
    ss.dependency 'YYModel'
  end
end
