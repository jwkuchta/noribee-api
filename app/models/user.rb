class User < ApplicationRecord
    validates :sub, uniqueness: {case_sensitive: false}
end
