class Proyect < ActiveRecord::Base
  has_many :movements
  has_many :activities
  
  attr_accessible :country, :name
end
