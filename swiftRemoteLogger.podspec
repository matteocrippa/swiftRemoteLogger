#
# Be sure to run `pod lib lint swiftRemoteLogger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "swiftRemoteLogger"
  s.version          = "0.1.0"
  s.summary          = "A simple remote logger for swift, via php script"

  s.description      = <<-DESC
                        A php based remote logger system, download the dedicated php script in order to remote log every information about your app during debug sessions.
                       DESC

  s.homepage         = "https://github.com/matteocrippa/swiftRemoteLogger"
  s.license          = 'MIT'
  s.author           = { "Matteo Crippa" => "github@matteocrippa.it" }
  s.source           = { :git => "https://github.com/matteocrippa/swiftRemoteLogger.git", :tag => s.version.to_s }
s.platform     = :ios, "8.0"

s.frameworks = "Foundation", "UIKit"

s.source_files  = 'Pod/Classes/*'

s.requires_arc = true
s.dependency 'Alamofire', '~> 2.0'
end
