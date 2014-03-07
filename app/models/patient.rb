class Patient < ActiveRecord::Base
	validates :name, :address, :phone_number, presence: true
	
end
