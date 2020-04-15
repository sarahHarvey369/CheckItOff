class User < ApplicationRecord
    has_many :assignments
    validates :email, uniqueness: true, presence: true
end
