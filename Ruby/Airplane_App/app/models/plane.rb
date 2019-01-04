class Plane < ApplicationRecord


    validates_numericality_of :seats, :greater_than_or_equal_to => 100 
end
