class Upload < ActiveRecord::Base
	has_many :routes

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Upload.create! row.to_hash
		end
		
	end
end
