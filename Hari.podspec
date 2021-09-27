Pod::Spec.new do |spec|
  spec.name         = "Hari"
  spec.version      = "0.0.5"
  spec.summary      = "Support library for Chusha"
  spec.description  = <<-DESC
  This is a upport library for Chusha.
                   DESC

  spec.homepage     = "https://github.com/FromAtom/Hari"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "FromAtom" => "fromatom@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/FromAtom/Hari.git", :tag => "#{spec.version}" }
  spec.source_files = 'Hari/**/*.{swift}'
  spec.requires_arc = true
  spec.swift_version = '5.2'
end
