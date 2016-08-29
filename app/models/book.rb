class Book < ApplicationRecord
	belongs_to :subject
	validates_presence_of :price
	validates_numericality_of :price, :message=>"Error message"
end
