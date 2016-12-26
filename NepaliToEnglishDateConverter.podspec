Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "NepaliToEnglishDateConverter"
s.summary = "This is the simple library that let you to convert the nepali date in the english and vice-versa."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Yubaraj Poudel" => "yubaraj@mantraideas.com" }

# For example,
# s.author = { "Yubaraj Poudel" => "yubaraj@mantraideas.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/yuviii/MyNepaliToEnglishDateConverter"

# For example,
# s.homepage = "https://github.com/yuviii/MyNepaliToEnglishDateConverter"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/yuviii/MyNepaliToEnglishDateConverter.git", :tag => "#{s.version}"}

# For example,
# s.source = { :git => "https://github.com/yuviii/MyNepaliToEnglishDateConverter.git", :tag => "#{s.version}"}


# 7
s.framework = "UIKit"
#s.dependency 'Alamofire', '~> 2.0'
#s.dependency 'BetterBaseClasses', '~> 1.0'
#s.dependency 'MBProgressHUD', '~> 0.9.0'


# 8
s.source_files = "NepaliToEnglishDateConverter/**/*.{swift}"

# 9
#s.resources = "NepaliToEnglishDateConverter/**/*.{png,jpeg,jpg,storyboard,xib}"
end