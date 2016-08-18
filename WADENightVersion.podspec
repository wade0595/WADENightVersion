Pod::Spec.new do |s|

  s.name         = "WADENightVersion"
  s.version      = "0.0.1"
  s.summary      = "IBInspectable标志一个需要修改的颜色属性"
  s.description  = <<-DESC
该项目在DKNightVersion v2.3.1基础上对所有UI控件采用IBInspectable去标志一个需要修改的颜色属性，可以在 Identity Inspector 中设置你所想要的颜色
               DESC

  s.homepage     = "https://github.com/wade0595/WADENightVersion"

  s.license      = "MIT"

  s.author             = { "wade0595" => "wade0595@163.com" }

  s.platform     = :ios, "7.0"

   s.source       = { :git => "https://github.com/wade0595/WADENightVersion.git", :tag => "0.0.1" }

  s.source_files  = "WADENightVersion", "Class/**/*.{h,m}"
  s.requires_arc = true
end