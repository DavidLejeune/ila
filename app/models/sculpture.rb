class Sculpture < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    def should_generate_new_friendly_id?
        title_changed?
    end

end
