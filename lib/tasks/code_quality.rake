# frozen_string_literal: true

require 'rubocop/rake_task'
require 'slim_lint/rake_task'

namespace :code_quality do
  desc 'Run RuboCop on the project'
  RuboCop::RakeTask.new

  SlimLint::RakeTask.new do |task|
    task.config = 'config/slim-lint.yml'
    task.files = %w[app/views]
  end
end

task code_quality: %w[code_quality:rubocop code_quality:slim_lint]
