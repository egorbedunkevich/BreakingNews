#
# Be sure to run `pod lib lint BreakingNews.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BreakingNews'
  s.version          = '0.2.0'
  s.summary          = 'New updates / tweets / posts available button'
  s.description      = 'Display a nice alert view to notify users that new posts are available.'
  s.homepage         = 'https://github.com/goshabedunkevich/BreakingNews'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'goshabedunkevich' => 'goshabedunkevich@gmail.com' }
  s.source           = { :git => 'https://github.com/goshabedunkevich/BreakingNews.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  s.source_files = 'BreakingNews/Classes/**/*'

end
