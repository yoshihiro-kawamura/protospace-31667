class Prototype < ApplicationRecord 
  has_one_attached :image
  has_many :comments, dependent: :destroy
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :image
  end
end
