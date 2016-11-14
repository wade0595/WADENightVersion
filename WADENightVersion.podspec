Pod::Spec.new do |s|
  # 你的项目名称
  s.name         = "WADENightVersion"
  # 版本号，最后会指定到tag版本号
  s.version      = "1.0.0"
  # 简要描述
  s.summary      = "使用IBInspectable标志一个需要修改的颜色属性"

  s.description  = <<-DESC
该项目在DKNightVersion v2.3.1基础上对所有UI控件采用IBInspectable去标志一个需要修改的颜色属性，可以在 Identity Inspector 中设置你所想要的颜色
                   DESC
  # github仓库地址
  s.homepage     = "https://github.com/wade0595/WADENightVersion"
  # license协议
    s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  # 作者
  s.author             = { "wade" => "wade0595@163.com" }
  # 是否支持arc
  s.requires_arc = true

  #  对应的平台版本号
  s.ios.deployment_target = "7.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  # 需要提供给pod的文件git地址
  s.source       = { :git => "https://github.com/wade0595/WADENightVersion.git", :tag => s.version }
  # 需要提供给pod的具体文件
  s.source_files  = "WADENightVersion/Class/**/*.{h,m}"
  # 如果有资源则指定，没有的话无需该条配置
  #s.resources = "YourProject/YourProject.bundle"
  s.frameworks = 'UIKit'
end

