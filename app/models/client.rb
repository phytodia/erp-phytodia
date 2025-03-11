class Client < ApplicationRecord
  has_many :analyses
  has_many :echantillons
end
