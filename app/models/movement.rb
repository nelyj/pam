class Movement < ActiveRecord::Base
  belongs_to :proyect

  attr_accessible :ammount, :proyect_id
end
