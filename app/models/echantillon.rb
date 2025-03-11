class Echantillon < ApplicationRecord
  belongs_to :client
  has_many :analyses
end
