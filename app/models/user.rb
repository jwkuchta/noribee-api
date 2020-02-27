class User < ApplicationRecord
    validates :user_id, uniqueness: {case_sensitive: false}
end
