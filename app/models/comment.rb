class Comment < ApplicationRecord
  has_rich_text :detalles
  belongs_to :user
  

end
