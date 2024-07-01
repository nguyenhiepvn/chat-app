require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    #cấu hình thời gian và ngôn ngữ cho app
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    # # cấu hình thông tin về sử dụng mini_magick với active_storage
    # Lệnh config.active_storage.variant_processor = :mini_magick giúp bạn chỉ định MiniMagick là thư viện xử lý hình ảnh cho Active Storage trong Rails, cho phép bạn dễ dàng tạo ra các biến thể hình ảnh với hiệu suất tốt và hỗ trợ đa dạng định dạng hình ảnh.
    config.active_storage.variant_processor = :mini_magick

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    
  end
end
