#
# Be sure to run `pod lib lint GTMNSStringHTMLAdditions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GTMNSStringHTMLAdditions"
  s.version          = "0.2.1"
  s.summary          = "GTMNSStringHTMLAdditions contains Google Toolbox for Mac string methods"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Google Toolbox for Mac string categories. Some useful methods for dealing with HTML strings
                       DESC

  s.homepage         = "https://code.google.com/p/google-toolbox-for-mac/"
  s.license          = 'Apache'
  s.author           = { "Gregory Jeckell" => "gregory.jeckell@gmail.com" }
  s.source           = { :git => "https://github.com/gjeck/GTMNSStringAdditions.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/GJeckell

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'GTMNSStringHTMLAdditions' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
