class Archivo < ActiveRecord::Base
  resourcify
  attr_accessible :titulo, :informe

  has_attached_file :informe, 
    :storage => :s3,
    :bucket => 'primerempleo',
    :s3_credentials => "#{Rails.root}/config/s3.yml"
end
