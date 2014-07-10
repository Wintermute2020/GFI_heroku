class Request < ActiveRecord::Base


	# validates :age, numericality: true
	# validates :username, presence: true
	# validates :username, uniqueness: true
	# validates :terms, acceptance: true
	# validates :password, confirmation: true
	# validates :username, exclusion: { in: %w(admin superuser) }
	# validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	# validates :age, inclusion: { in: 0..9 }
	validates :title, length: { maximum: 100 }
	validates :description, length: { minimum: 100 }
	validates :give, length: { maximum: 500 }
	validates :give, length: { maximum: 500 }


	belongs_to :user
	has_one :gallery
	validates_presence_of :gallery
	has_many :pictures, through: :gallery

	validates :title, length: { maximum: 150 }

	# validates_attachment_presence :photo
	# validates_attachment_size :photo, :less_than => 5.megabytes
	# validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']



	def self.search(query, query2, query3)
		where("title like ?", "%#{query}%").where("category like ?", "%#{query2}%").where("city like ?", "%#{query3}%")
	end

end
