class Producto < ApplicationRecord
  belongs_to :categoria
  belongs_to :marca
end
