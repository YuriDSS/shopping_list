# frozen_string_literal: true

require 'rubocop/rake_task'

namespace :code_quality do
  desc 'Run RuboCop on the project'
  RuboCop::RakeTask.new
end

task code_quality: %w[code_quality:rubocop]
