    
class CafeDrink < ActiveRecord::Base
    belongs_to :cafes
    belongs_to :drinks
end 