class Installation < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    def should_generate_new_friendly_id?
        new_record? || slug.nil? || slug.blank?
        title_changed?
    end

end
