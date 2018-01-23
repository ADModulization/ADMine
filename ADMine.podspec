Pod::Spec.new do |s|

  s.name         = "ADMine"
  s.version      = "3"
  s.summary      = "ADMine."
  s.description  = <<-DESC
                    this is ADMine
                   DESC

  s.homepage     = "https://github.com/ADModulization/ADMine"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "naibin" => "binjiayou66@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ADModulization/ADMine.git", :tag => s.version.to_s }

  s.source_files  = "ADMine/ADMine/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"
  s.requires_arc = true

  s.dependency "ADNetworking"
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "CTNetworking"
  # s.dependency "CTAPIManagers"
  # s.dependency "CTMediator"

end
