class User < ActiveRecord::Base
  
  validates :name,
    presence: true,
    length: { minimum: 1 }
  
  def self.from_omniauth(auth)
    puts auth
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      if auth.provider == "facebook"
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      elsif auth.provider == "github"
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.nickname
      end
      user.save!
    end
  end
end
