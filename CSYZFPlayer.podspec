#
# Be sure to run `pod lib lint ZFPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'CSYZFPlayer'
    s.version          = '1.0.0'
    s.summary          = 'A good player made by renzifeng'
    s.homepage         = 'https://github.com/RuanR/CSYZFPlayer'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { "shine sun" => "1525196995@qq.com" }
    s.source           = { :git => 'https://github.com/RuanR/CSYZFPlayer.git', :tag => s.version.to_s }
    s.social_media_url = 'http://weibo.com/zifeng1300'
    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.static_framework = true
    s.default_subspec = 'Core'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.subspec 'Core' do |core|
        core.source_files = 'CSYZFPlayer/Classes/Core/**/*'
        core.public_header_files = 'CSYZFPlayer/Classes/Core/**/*.h'
        core.frameworks = 'UIKit', 'MediaPlayer', 'AVFoundation'
    end
    
    s.subspec 'ControlView' do |controlView|
        controlView.source_files = 'CSYZFPlayer/Classes/ControlView/**/*.{h,m}'
        controlView.public_header_files = 'CSYZFPlayer/Classes/ControlView/**/*.h'
        controlView.resource = 'CSYZFPlayer/Classes/ControlView/ZFPlayer.bundle'
        controlView.dependency 'CSYZFPlayer/Core'
    end
    
    s.subspec 'AVPlayer' do |avPlayer|
        avPlayer.source_files = 'CSYZFPlayer/Classes/AVPlayer/**/*.{h,m}'
        avPlayer.public_header_files = 'CSYZFPlayer/Classes/AVPlayer/**/*.h'
        avPlayer.dependency 'CSYZFPlayer/Core'
    end
    
    s.subspec 'ijkplayer' do |ijkplayer|
        ijkplayer.source_files = 'CSYZFPlayer/Classes/ijkplayer/*.{h,m}'
        ijkplayer.public_header_files = 'CSYZFPlayer/Classes/ijkplayer/*.h'
        ijkplayer.dependency 'CSYZFPlayer/Core'
        ijkplayer.dependency 'IJKMediaFramework'
    end
    
end
