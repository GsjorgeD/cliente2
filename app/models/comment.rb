class Comment < ApplicationRecord
  has_rich_text :detalles
  belongs_to :user
  has_many :answers, dependent: :delete_all

end
