class Character < ApplicationRecord
    belongs_to :universe
    validates :name, presence: true
    has_many :character_tags, dependent: :destroy
    has_many :tags, through: :character_tags
end
