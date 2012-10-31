# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  acctype    :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :acctype


  has_many :purchases
  has_many :songs, :through => :purchases

  validates :name, :email, :password, :presence => true

end
