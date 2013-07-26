class Upload < ActiveRecord::Base
  attr_accessible :attached
  has_attached_file :attached
end
