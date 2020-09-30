class CharacterTag < ApplicationRecord
  belongs_to :character
  belongs_to :tag

  validates :tag, uniqueness: { scope: :character, message: 'already added' }
end
