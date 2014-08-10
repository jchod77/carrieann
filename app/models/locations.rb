class Locations < ActiveRecord::Base
	belongs_to :company
	has_one :address

end
