class Location < ActiveRecord::Base
	acts_as_gmappable


	has_one :profile
	has_one :location
	belongs_to :offer

	def gmaps4rails_address
		address
	end
end