class Stop < ActiveRecord::Base
	belongs_to :route

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Upload.create! row.to_hash
		end
	end
end
