#
#  Be sure to run `pod spec lint Hari.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "Hari"
  spec.version      = "0.0.3"
  spec.summary      = "Chusha support lib"
  spec.description  = <<-DESC
  Chusha support library.
  DESC
  spec.homepage     = "https://github.com/FromAtom/Hari"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "FromAtom" => "fromatom@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/FromAtom/Hari.git", :tag => "#{spec.version}" }
  spec.source_files  = "Hari/**/*.{swift}"
  spec.swift_version = "5.2"
  spec.requires_arc = true
end
