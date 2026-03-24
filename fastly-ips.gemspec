# frozen_string_literal: true

require_relative 'lib/fastly/ips/version'

Gem::Specification.new do |spec|
  spec.name        = 'fastly-ips'
  spec.version     = Fastly::IPs::VERSION
  spec.authors     = ['Kevin Sylvestre']
  spec.email       = ['kevin@ksylvest.com']
  spec.homepage    = 'https://github.com/ksylvest/fastly_ips'
  spec.summary     = 'A library to configure Fastly trusted IPs.'
  spec.description = 'This library ensures Fastly IPs are trusted with by Ruby on Rails applications.'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.required_ruby_version = '>= 4.0'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails'
end
