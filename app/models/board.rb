class Board < ActiveRecord::Base
	belongs_to :user
	has_many :pins

	validates :name, :user_id, presence: true
	
	def full_name
		"#{first_name} #{last_name}"
	end	
end
