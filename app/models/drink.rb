class Drinks < ActiveRecord::Base
    belongs_to :user
    has_many :cafes, through: :cafe_drinks
end 