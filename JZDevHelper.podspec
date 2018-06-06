Pod::Spec.new do |s|
  s.name         = "JZDevHelper"
  s.version      = "0.1.1"
  s.summary      = "JZDevHelper"
  s.description  = <<-DESC
                     JZDevHelper App开发常用的Category/工具类/宏等
                   DESC
  s.homepage     = "https://github.com/zzzzzyijie/JZDevHelper"
  
  s.license      = 'MIT'
  s.author       = { "Jacky Zeng" => "jackiezeng01@163.com" }
  s.source       = { :git => "https://github.com/zzzzzyijie/JZDevHelper.git", :tag => s.version.to_s }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'JZDevHelper/JZDevHelper.h'
  s.frameworks = 'Foundation', 'UIKit'
  #s.private_header_files = 'Classes/ios/private/*.h'
  
  #s.dependency 'FLKAutoLayout', '~> 0.1'
  s.subspec 'Category' do |ss|
#ss.source_files = 'JZDevHelper/**/*.{h,m}'
    ss.subspec 'Foundation' do |sss|
      sss.source_files = 'JZDevHelper/**/*.{h,m}'
    end
    ss.subspec 'UIKit' do |sss|
       sss.source_files = 'JZDevHelper/**/*.{h,m}'
    end
  end

  s.subspec 'Macro' do |ss|
    ss.source_files = 'JZDevHelper/**/*.{h,m}'
  end

  s.subspec 'Tool' do |ss|
    ss.source_files = 'JZDevHelper/**/*.{h,m}'
  end

  s.subspec 'Util' do |ss|
    ss.source_files = 'JZDevHelper/**/*.{h,m}'
  end

end 
