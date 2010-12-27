class Dictionary < ActiveRecord::Base
  validates_presence_of :name
  has_many :words
end
