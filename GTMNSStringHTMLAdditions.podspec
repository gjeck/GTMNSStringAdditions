#
# Be sure to run `pod lib lint GTMNSStringHTMLAdditions.podspec' to ensure this is a
# valid spec before submitting.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GTMNSStringHTMLAdditions"
  s.version          = "0.2.1"
  s.summary          = "GTMNSStringHTMLAdditions contains Google Toolbox for Mac string methods"
  s.description      = <<-DESC
Google Toolbox for Mac string categories. Some useful methods for dealing with HTML strings
                       DESC
  s.homepage         = "https://code.google.com/p/google-toolbox-for-mac/"
  s.license          = 'Apache'
  s.author           = { "Gregory Jeckell" => "gregory.jeckell@gmail.com" }
  s.source           = { :git => "https://github.com/gjeck/GTMNSStringAdditions.git", :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
end
