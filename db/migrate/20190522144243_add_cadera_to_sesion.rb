class AddCaderaToSesion < ActiveRecord::Migration[5.1]
    def change
      add_column :sesions, :cadera, :float
    end
  end