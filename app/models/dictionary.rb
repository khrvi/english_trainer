class Dictionary < ActiveRecord::Base
  validates_presence_of :name
  has_many :words
  belongs_to :user
end