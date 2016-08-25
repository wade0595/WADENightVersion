#
#  Be sure to run `pod spec lint WADENightVersion.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "WADENightVersion"
<<<<<<< HEAD
  s.version      = "0.0.4"
=======
  s.version      = “0.0.2”
>>>>>>> master
  s.summary      = "使用IBInspectable标志一个需要修改的颜色属性"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
该项目在DKNightVersion v2.3.1基础上对所有UI控件采用IBInspectable去标志一个需要修改的颜色属性，可以在 Identity Inspector 中设置你所想要的颜色
                   DESC

  s.homepage     = "https://github.com/wade0595/WADENightVersion"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

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
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "wade" => "wade0595@163.com" }
  # Or just: s.author    = "wade"
  # s.authors            = { "wade" => "wade0595@163.com" }
  # s.social_media_url   = "http://twitter.com/wade"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
   s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

<<<<<<< HEAD
  s.source       = { :git => "https://github.com/wade0595/WADENightVersion.git", :tag => "0.0.4”}
=======
  s.source       = { :git => "https://github.com/wade0595/WADENightVersion.git", :tag => “0.0.2”}
>>>>>>> master


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

<<<<<<< HEAD
  s.source_files  = "WADENightVersion/Class/DKNightVersion.h"

=======
  s.source_files  = "WADENightVersion/Class/**/*.{h,m}"
>>>>>>> master
  # s.exclude_files = "WADENightVersion/Class"

  s.public_header_files = "WADENightVersion/Class/DKNightVersion.h"
  	
  s.subspec 'Core' do |ss|
    ss.source_files = "Class/Core/*.{h,m}", "Class/ColorTable/*{h,m}"

  ss.subspec 'DeallocBlockExecutor' do |sss|
        sss.source_files = "Class/DeallocBlockExecutor/*.{h,m}"
  end

  ss.subspec 'extobjc' do |sss|
        sss.source_files = "Class/extobjc/*.h"
  end

  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = "Class/UIKit/*.{h,m}", "Class/Manual/*.{h,m}"
    ss.dependency 'Class/Core'
  end

  s.subspec 'CoreAnimation' do |ss|
    ss.source_files = "Class/CoreAnimation/*.{h,m}"
    ss.dependency 'Class/Core'
  end


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  s.resource = "WADENightVersion/Class/ColorTable/DKColorTable.txt"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
