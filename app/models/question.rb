class Question < ActiveRecord::Base
  attr_accessible :inquiry

  validates  :inquiry, :presence => true
end
