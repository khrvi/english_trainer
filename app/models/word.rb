class Word < ActiveRecord::Base
  validates_presence_of :word
  has_one :dictionary
end
