Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
    ENV['OAUTH_CLIENT_ID'],
    ENV['OAUTH_CLIENT_SECRET'],
    {name: "google_login", approval_prompt: 'force'}
end