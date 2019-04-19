Pod::Spec.new do |s|
    s.name             = 'NNUtils'
    s.version          = '0.1.0'
    s.summary          = 'A short description of NNUtils.'
    s.homepage         = 'https://github.com/ChandlerNguyen/NNUtils'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = 'Nang Nguyen'
    s.source           = { :git => 'https://github.com/ChandlerNguyen/NNUtils.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '9.0'
    
    s.source_files = 'NNUtils/**/*'
    
    s.frameworks = 'Foundation','UIKit'
end
