require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FitappApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec, # ここから5行を追記
                       fixtures: false, # テストDBにレコードを作るfixtureの作成をスキップ(FactoryBotを使用するため)
                       view_specs: false, # ビューファイル用のスペックを作成しない
                       helper_specs: false, # ヘルパーファイル用のスペックを作成しない
                       routing_specs: false # routes.rb用のスペックファイル作成しない
    end
  end
end
