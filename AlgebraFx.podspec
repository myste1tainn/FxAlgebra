#
# Be sure to run `pod lib lint AlgebraFx.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlgebraFx'
  s.version          = '0.1.0'
  s.summary          = 'Algebraic expression support for Rx style programming'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Algebraic expression support for Rx style programming. In an attempt to make the code
  more concise (1) and readable (2). This library provides operators enabling adopter to wield the power of Algebra.
                       DESC

  s.homepage         = 'https://github.com/myste1tainn/AlgebraFx'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'myste1tainn' => 'a.keereena@gmail.com' }
  s.source           = { :git => 'https://github.com/myste1tainn/AlgebraFx.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/AlgebraFx/Core/**/*'
  s.swift_version = '4.2'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  s.default_subspecs = ['RxSwift']

  s.subspec 'RxSwift' do |ss|
    ss.source_files = 'Sources/AlgebraFx/Core/**/*', 'Sources/AlgebraFx/RxSwift/**/*'
    ss.dependency 'RxSwift', '~> 4.3.0'
    ss.dependency 'SwiftExpansion', '~> 0.1.0'
    ss.dependency 'RxSwiftExpansion', '~> 0.1.0'
  end

  s.subspec 'RxCocoa' do |ss|
    ss.source_files = 'Sources/AlgebraFx/Core/**/*', 'Sources/AlgebraFx/RxSwift/**/*', 'Sources/AlgebraFx/RxCocoa/**/*'
    ss.dependency 'RxSwift', '~> 4.3.0'
    ss.dependency 'RxCocoa', '~> 4.3.0'
    ss.dependency 'SwiftExpansion', '~> 0.1.0'
    ss.dependency 'RxSwiftExpansion', '~> 0.1.0'
  end
end
