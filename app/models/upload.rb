class Upload < ActiveRecord::Base
require 'csv'
	has_many :routes

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    document = find_by_id(row["id"]) || new
    document.attributes = row.to_hash.slice(*accessible_attributes)
    document.save!
  end
end

end
