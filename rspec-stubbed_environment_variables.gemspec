# frozen_string_literal: true

require_relative 'lib/rspec/stubbed_environment_variables/version'

Gem::Specification.new do |spec|
  spec.name = 'rspec-stubbed_environment_variables'
  spec.version = Rspec::StubbedEnvironmentVariables::VERSION
  spec.authors = ['Vraiment']
  spec.email = ['jemc44@gmail.com']

  spec.summary = 'Simple RSpec shared context to stub environment variables.'
  spec.homepage = 'https://github.com/Vraiment/rspec-stubbed_environment_variables'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
