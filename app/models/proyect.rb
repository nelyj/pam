class Proyect < ActiveRecord::Base
  has_many :movements, :dependent => :destroy
  has_many :activities, :dependent => :destroy
  
  attr_accessible :country, :name
end
