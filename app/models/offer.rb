class Offer < ActiveRecord::Base

	acts_as_gmappable :process_geocoding => false

	belongs_to :user
	belongs_to :location


	# def self.search(query)
	# 	where("title like ?", "%#{query}%")
	#
	# end
	def self.offersearch(query, query2, query3)
		where("title like ?", "%#{query}%").where("category like ?", "%#{query2}%").where("city like ?", "%#{query3}%")
	end

	def gmaps4rails_address
		def gmaps4rails_address
			"#{address}"
		end
	end


end
