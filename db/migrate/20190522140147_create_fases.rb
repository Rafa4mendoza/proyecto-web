class CreateFases < ActiveRecord::Migration[5.1]
    def change
      create_table :fases do |t|
  
        t.string :nombre
        t.boolean :contiene_video, default: false
        t.timestamps
      end
    end
  end