Pod::Spec.new do |s|
  s.name         = "XHCategories"
  s.version      = "1.0"
  s.summary      = "简洁轻便提示工具类"
  s.homepage     = "https://github.com/CoderZhuXH/XHCategories"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHCategories.git", :tag => s.version }
  s.source_files = "XHCategories", "*.{h,m}"
  s.requires_arc = true
  
end
