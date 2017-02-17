# Configure Solidus Preferences
# See http://docs.solidus.io/Spree/AppConfiguration.html for details

Spree.config do |config|
  # Without this preferences are loaded and persisted to the database. This
  # changes them to be stored in memory.
  # This will be the default in a future version.
  config.use_static_preferences!

  # Core:

  # Default currency for new sites
  config.currency = "EUR"

  # from address for transactional emails
  config.mails_from = "gterral2@gmail.com"

  #Uncomment to stop tracking inventory levels in the application
  config.track_inventory_levels = false

  # When set, product caches are only invalidated when they fall below or rise
  # above the inventory_cache_threshold that is set. Default is to invalidate cache on
  # any inventory changes.
  # config.inventory_cache_threshold = 3


  # Frontend:

  #Custom logo for the frontend
  config.logo = "logo/logo_noir_grand.png"

  #Template to use when rendering layout
  config.layout = "spree/layouts/spree_application"


  # Admin:

  # Custom logo for the admin
  config.admin_interface_logo = "logo/logo_noir_grand.png"

  # Gateway credentials can be configured statically here and referenced from
  # the admin. They can also be fully configured from the admin.
  #
  # config.static_model_preferences.add(
  #   Spree::Gateway::StripeGateway,
  #   'stripe_env_credentials',
  #   secret_key: ENV['STRIPE_SECRET_KEY'],
  #   publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  #   server: Rails.env.production? ? 'production' : 'test',
  #   test_mode: !Rails.env.production?
  # )
end

Spree::Frontend::Config.configure do |config|
  config.use_static_preferences!

  config.locale = 'fr'
end

Spree::Backend::Config.configure do |config|
  config.use_static_preferences!

  config.locale = 'fr'
end

Spree::Api::Config.configure do |config|
  config.use_static_preferences!

  config.requires_authentication = true
end

Spree.user_class = "Spree::LegacyUser"

Spree::Money.default_formatting_rules[:symbol_position] = :after

Spree.config do |config|
  config.use_s3 = true
  config.s3_bucket = 'milor-dev'
  config.s3_access_key = ENV['AWS_ACCESS_KEY']
  config.s3_secret = ENV['AWS_SECRET_KEY']
  config.attachment_url = ":s3_eu_url"
  config.s3_host_alias = "s3-eu-west-1.amazonaws.com"
end

Paperclip.interpolates(:s3_eu_url) do |attachment, style|
  "#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end