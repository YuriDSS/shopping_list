# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShoppingList
  # Shopping list
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
      g.helper false
      g.assets false
      g.view_specs false
    end
  end
end
