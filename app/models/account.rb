class Account < ActiveRecord::Base
	has_one :product
	belongs_to :owner
end
