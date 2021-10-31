class Answer < ApplicationRecord
  belongs_to :comment
  has_rich_text :respuesta
end
