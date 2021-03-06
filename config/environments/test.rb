LinkedDevelopmentApi::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Configure static asset server for tests with Cache-Control for performance
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=3600"

  # Log error messages when you accidentally call methods on nil
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection    = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test


  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr

  Tripod.configure do |config|
    # config.query_endpoint   = 'http://localhost:3030/linkeddev-test/sparql'
    # config.update_endpoint  = 'http://localhost:3030/linkeddev-test/update'
    # config.data_endpoint  = 'http://localhost:3030/linkeddev-test/data'

    config.query_endpoint = 'http://linked-development-pmd.dev/sparql' #'http://localhost:3030/junk/sparql'
    config.data_endpoint = 'http://localhost:3030/junk/data'
    # For hacking on rails console
    config.update_endpoint = 'http://localhost:3030/junk/update'
  end
end
