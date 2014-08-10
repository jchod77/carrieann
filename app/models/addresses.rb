class Addresses < ActiveRecord::Base
	has_one :location
	has_many :occupants, class_name: :client
end
