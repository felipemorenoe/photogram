class Like < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :photo_id, :presence => true

  validates :user_id, :presence => true

end
