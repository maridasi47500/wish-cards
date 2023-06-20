  config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
      config.action_mailer.perform_caching = false
        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
        
        config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
      port:                 587,
      domain:               'gmail.com',
          user_name:            ENV["MYEMAIL"],
            password:             ENV["MYPASSWORD"],
              authentication:       'plain',
                enable_starttls_auto: true,
                  open_timeout:         10,
                    read_timeout:         10 }
