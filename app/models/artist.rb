class Artist < ActiveRecord::Base
  attr_accessible :biography, :birthdate, :name, :photo
end
