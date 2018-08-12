class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :image, :presence => true

  validates :user_id, :presence => true

end
