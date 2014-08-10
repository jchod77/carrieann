class Client < ActiveRecord::Base
	belongs_to :employer, class_name: :company
	has_many :addresses

end
