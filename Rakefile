# frozen_string_literal: true

require 'bundler/gem_tasks'

desc 'Run sorbet type checks'
task :tc do
  require 'English'

  puts 'Executing type checking with Sorbet (`srb`)...'

  exit $CHILD_STATUS&.exitstatus || 1 unless system(File.join(__dir__, 'bin', 'srb').to_s)
end

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: %i[tc spec rubocop]
