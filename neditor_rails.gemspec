$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "neditor_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "neditor_rails"
  spec.version     = NeditorRails::VERSION
  spec.authors     = ["Chuanpin Zhu"]
  spec.email       = ["czhu@linkedin.com"]
  spec.homepage    = "https://github.com/zcpdog/neditor_rails"
  spec.summary     = "Rails wrapper for neditor"
  spec.description = "Rails wrapper for neditor, a rich text editor based on baidu ueditor for rails"
  spec.license     = "MIT"

  spec.files = Dir["{app,lib,vendor,bin}/**/*", "MIT-LICENSE", "Rakefile", "README.md","Gemfile","Gemfile.lock"]
end
