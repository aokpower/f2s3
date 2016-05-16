# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'f2s3/version'

Gem::Specification.new do |spec|
  spec.name = 'f2s3'
  spec.version = F2S3::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Cooper LeBrun']
  spec.email = ['cooperlebrun@gmail.com']
  spec.homepage = 'https://github.com/aokpower/f2s3'
  spec.summary = 'Simple file upload to an s3 bucket.'
  spec.description = 'Simple file upload to an s3 bucket.'
  
  spec.files = Dir.glob('{lib}/**/*') # + LICENSE, README.md
  spec.license = 'MIT'
  spec.require_path = 'lib'

  # spec.executables << ''

  spec.add_runtime_dependency 'aws-sdk', '~> 2'
end
