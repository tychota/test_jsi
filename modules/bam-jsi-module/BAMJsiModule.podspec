# coding: utf-8
require "json"

package = JSON.parse(File.read(File.join(__dir__, "../../", "package.json")))
version = package['version']

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
  s.name                   = "Bam-JSI-Module"
  s.version                = version
  s.author                 = package['author']
  s.summary                = "The core of React Native."
  s.license                = package["license"]
  s.homepage               = package['homepage']
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = source
  s.compiler_flags         = folly_compiler_flags
  s.library                = "stdc++"
  
  s.source       = { :git => "https://github.com/tychota/test_jsi.git" }
  s.source_files  = "./src/**/*.{h,hh,m,mm}"

  s.dependency 'React'
end
