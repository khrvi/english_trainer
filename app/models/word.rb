class Word < ActiveRecord::Base
  validates_presence_of :word
  belongs_to :dictionary
end
