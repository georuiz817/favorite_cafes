class User < ActiveRecord::Base
    has_many :cafes
    has_many :drinks, through: :cafes
end 