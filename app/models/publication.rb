class Publication < ApplicationRecord
  has_rich_text :cuerpo
  has_one_attached :imagen
  belongs_to :admin
end
