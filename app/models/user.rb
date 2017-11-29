class User < ApplicationRecord
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initizlize.top do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.name = auth.info.name
            user.oauth_taken = auth.credentials.taken
            user.oauth_expires_at = Time.at(auth.credentials.expires_at)
            user.save!
        end
    end
end
