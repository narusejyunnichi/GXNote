Pod::Spec.new do |s|
s.name         = "GXNote"
s.version      = "0.0.1"
s.summary      = "A simple Note"
s.homepage     = "https://github.com/stguoke/GXNote.git"
s.license      = "MIT"
s.license = { :type => 'MIT', :file => 'MIT-LICENSE.txt' }
s.author             = { "xge" => "stguoke@vip.qq.com" }
s.platform     = :ios, "9.0"
s.source       = { :git => "https://github.com/stguoke/GXNote.git", :tag => "0.0.1" }
s.framework  = "UIKit"
s.vendored_frameworks = 'TestPodSpecDemo/GXNote.framework'
s.requires_arc = true
end
