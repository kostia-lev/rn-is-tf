Pod::Spec.new do |s|
  s.name         = "RnIsTf"
  s.version      = "0.1.0"
  s.summary      = "Check if app runs via TestFlight"
  s.homepage     = "https://vahrushev.info"
  s.license      = { :type => "MIT" }
  s.author       = { "You" => "kostia_lev@hotmail.com" }

  s.platforms    = { :ios => "12.0" }
  s.source       = { :path => "." }

  s.source_files = "ios/**/*.{h,m}"

  s.dependency "React-Core"
end
