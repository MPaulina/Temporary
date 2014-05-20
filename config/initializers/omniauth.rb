OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '6d5d69b3949a20e539be', 'e578dd0b4d2b8b551d29935597cdd4004783e7e6'
  provider :facebook, '702576236468442', '11b5790de537f40511ed42bf0628799d'
end

