Pod::Spec.new do |s|

  s.name         = "DBCategories"
  s.version      = "1.0.0"
  s.summary      = "Dabay tech : DBCategories is useful Categories."
  s.homepage     = "https://github.com/Dabay-Tech/DBCategories"
  s.license      = "MIT"
  s.author       = { "Tao Fei" => "taofei0610@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Dabay-Tech/DBCategories.git", :tag => s.version.to_s}
  s.source_files = "DBCategories/**/*.{h,m}"
  s.frameworks   = "UIKit",'Accelerate',"Security"
  s.requires_arc = true

end
