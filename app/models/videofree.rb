class Videofree < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged

    validates :name, presence: true
    validates :description, presence: true
    validates :videofree_source_id, presence: true
    validates :name, length: { minimum: 3 }

    belongs_to :projectfree
end
