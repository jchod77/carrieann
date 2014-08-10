class Company < ActiveRecord::Base
	has_many :employees, class_name: :client
	has_many :locations

end
