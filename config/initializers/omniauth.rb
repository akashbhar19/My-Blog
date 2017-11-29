OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '855559764066-2g7ofjcfo6q4gfsk55uq1jomjtofovrm.apps.googleusercontent.com', 'Lkd8hSRmXIUjWGy9j0zwCDdG', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end