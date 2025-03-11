class Echantillon < ApplicationRecord
  belongs_to :prestation
  has_many :analyses
end
