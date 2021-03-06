class Installation < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged

    has_one_attached :image
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :description,  presence: true


	def should_generate_new_friendly_id?
		title_changed?
	end
end
