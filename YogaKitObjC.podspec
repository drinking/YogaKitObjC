podspec = Pod::Spec.new do |spec|
  spec.name = 'YogaKitObjC'
  spec.version = '1.6.0'
  spec.license =  { :type => 'BSD', :file => "LICENSE" }
  spec.homepage = 'https://github.com/drinking/YogaKitObjC'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Drinking'
  spec.source = {
    :git => 'https://github.com/drinking/YogaKitObjC.git',
    :tag => '1.6.0',
  }

  spec.platform = :ios
  spec.ios.deployment_target = '8.0'
  spec.ios.frameworks = 'UIKit'

  spec.dependency 'Yoga', '= 1.6.0'
  spec.source_files = 'Source/*.{h,m}'
  spec.public_header_files = 'Source/{YGLayout,UIView+Yoga}.h'
  spec.private_header_files = 'Source/YGLayout+Private.h'
end

podspec
