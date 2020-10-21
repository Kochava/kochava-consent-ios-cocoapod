#
# Be sure to run `pod lib lint KochavaConsentiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KochavaConsentiOS'
  s.version          = '4.1.1'
  s.summary          = 'The KochavaConsent module of the Kochava iOS SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
  The KochavaConsent module provides consent management.  This includes support for GDPR, CCPA, and other consumer privacy laws.
  DESC

  s.homepage         = 'http://www.kochava.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Kochava' => 'support@kochava.com' }
  s.source           = { :git => 'https://github.com/Kochava/kochava-consent-ios-cocoapod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.3'

  s.source_files = 'KochavaConsentiOS/Classes/**/*'
  
  s.resources = ['KochavaConsentiOS/Assets/**/*.{xib}']
#  s.resource_bundles = {
#     'KochavaConsentiOS' => ['KochavaConsentiOS/Assets/*.xib']
#  }

  s.public_header_files = 'KochavaConsentiOS/Classes/**/*.h'
  s.frameworks   = 'Foundation', 'UIKit'
  s.dependency 'KochavaUIiOS', '~> 4.1.1'

  s.platform     = :ios, '10.3'
  s.vendored_library = 'KochavaConsentiOS/Libraries/libKochavaConsentiOS.a'
  s.preserve_path = 'KochavaConsentiOS/Libraries/libKochavaConsentiOS.a'
  # s.library = 'KochavaConsentiOS'

  s.swift_versions = '5.0'
  
  # Xcode 12 Bug Fix:  https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694268918
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
