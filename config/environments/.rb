config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
      port:                 587,
        domain:               'localhost',
          user_name:            ENV["MYEMAIL"],
            password:             ENV["MYPASSWORD"],
              authentication:       'plain',
                enable_starttls_auto: true,
                  open_timeout:         5,
                    read_timeout:         5 }
