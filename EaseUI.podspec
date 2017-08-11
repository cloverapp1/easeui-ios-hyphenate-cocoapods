Pod::Spec.new do |spec|
  spec.name         = 'EaseUI'
  spec.version      = '3.3.1'
  spec.license 	    = { :type => 'MIT', :file => 'LICENSE' }
  spec.summary      = 'EaseMob UI Kit'
  spec.homepage     = 'https://github.com/easemob/easeui-ios-hyphenate-cocoapods'
  spec.author       = {'EaseMob Inc.' => 'admin@easemob.com'}
  spec.source       =  {:git => 'https://github.com/easemob/easeui-ios-hyphenate-cocoapods.git', :tag => spec.version.to_s }
  spec.source_files = 'EaseUI/**/*.{h,m,mm}'
  spec.platform     = :ios, '7.0'
  spec.vendored_libraries = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/libopencore-amrnb.a','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/libopencore-amrwb.a']
  spec.requires_arc = true
  spec.frameworks = 'Foundation', 'UIKit'
  spec.libraries    = 'stdc++'
  spec.resources    = ['EaseUI/resources/EaseUIResource.bundle','EaseUI/resources/MWPhotoBrowser.bundle']
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}		
  spec.dependency 'MJRefresh', '~> 3.1.0'
  spec.dependency 'KILabel', '~> 1.0.0'
  spec.dependency 'DACircularProgress', '~> 2.3'
  spec.dependency 'Hyphenate', '= 3.3.2'
end
