require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "motor-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform = :ios, '13.0'
  s.source           = { :path => './ios' }

  s.source_files = "ios/**/*.{h,m,mm,swift}"
  s.vendored_frameworks = 'ios/Frameworks/SonrMotor.xcframework'
  s.dependency "React-Core"
  s.swift_version = '5.0'
end
