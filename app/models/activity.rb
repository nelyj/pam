class Activity < ActiveRecord::Base
  belongs_to :proyect

  attr_accessible :description, :proyect_id, :title
end
