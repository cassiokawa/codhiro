Devise.setup do |config|

  config.mailer_sender = 'Projeto Supernova <no-reply@gmail.com >'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

 
  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '55874369586-3uh72jctg52p2mqfc1705puq9cv5m8qf.apps.googleusercontent.com',
  'IxWkDTzcz7oAw-hYisieWq_0', {access_type: "offline", approval_prompt: ""}

  require 'omniauth-facebook'
  config.omniauth :facebook, '1017402161626925','147319f76a24624e0d797830620ec601' 

  require 'omniauth-github'
  config.omniauth :github, 'd6a9f7cd2e3f0b2b82b7','1288eebbaec4259af7c402b520d55cb1c40f8218', scope:"user:email" 


end
