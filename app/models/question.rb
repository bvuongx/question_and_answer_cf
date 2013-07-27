class Question < ActiveRecord::Base
  attr_accessible :inquiry, :answer

  has_and_belongs_to_many :users

  validates :inquiry, :presence => true
  validates :inquiry, :presence => true
end
