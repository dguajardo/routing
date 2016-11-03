class Upload < ActiveRecord::Base
	has_many :routes
	require 'csv'
	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		Upload.create! row.to_hash
		end
	end
end
