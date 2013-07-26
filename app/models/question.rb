class Question < ActiveRecord::Base
  attr_accessible :inquiry, :answer

  validates :inquiry, :presence => true
  validates :inquiry, :presence => true
end
