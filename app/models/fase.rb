class Fase < ApplicationRecord
    
  has_many :documents
  has_one :video
end