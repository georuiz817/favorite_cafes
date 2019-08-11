class Cafe < ActiveRecord::Base
    belongs_to :user
    has_many :drinks, through: :cafe_drinks
    
  end
