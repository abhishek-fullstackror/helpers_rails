class User < ApplicationRecord
    normalizes :email, with: -> email { email.strip.upcase }
    enum status: {
        inactive: 0,
        active:1
    }
    scope :active, ->{ where(status: :active)}

    def self.active_user
        where(status: :active)
    end
end
