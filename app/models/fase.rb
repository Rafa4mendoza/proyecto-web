class Fase < ApplicationRecord
    
  has_many :documents, :videos
end