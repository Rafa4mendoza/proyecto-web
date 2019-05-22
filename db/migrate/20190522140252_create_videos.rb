class CreateVideos < ActiveRecord::Migration[5.1]
    def change
      create_table :videos do |t|
  
        t.string :enlace
        t.string :nombre
        t.string :descipcion
        t.belongs_to :fase, index: true
        t.timestamps
      end
    end
  end