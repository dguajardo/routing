class Route < ActiveRecord::Base
	has_many :stops
	belongs_to :upload
end
