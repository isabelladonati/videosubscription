class Projectfree < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :web_link, presence: true
    validates :github_link, presence: true

    validates :name, length: { minimum: 3 }

    has_many :videofrees
end
