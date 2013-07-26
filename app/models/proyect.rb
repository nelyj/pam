class Proyect < ActiveRecord::Base
  has_many :movements, :dependent => :destroy
  has_many :activities, :dependent => :destroy
  
  attr_accessible :name, :country, :generation, :ycode, :submitted, :readyforjudging, :code,
  					:selected, :formalized, :et, :arrivalstage, :website, :angellist, :pitch, :incorporated,
  					:demoday, :roundtable, :fulltpeople, :startupage, :capitalraisedbefore, :mentorab, :reapplaying,
  					:hearaboutsup, :startdate, :finishdate, :statusnow, :capitalraisedmusta, :datemusta, :capitalraisedmustb, 
  					:datemustb, :industry, :exitstage, :nextprogram, :incorpchile, :dateic, :incorpabroad, :dateia, :pivoted, :pnewname
end
