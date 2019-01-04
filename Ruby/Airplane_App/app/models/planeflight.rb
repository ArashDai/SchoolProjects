class Planeflight < ApplicationRecord
  belongs_to :plane_id

  validates_exclusion_of :fromcity, :in => :tocity

end
