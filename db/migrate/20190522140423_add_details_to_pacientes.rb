class AddDetailsToPacientes < ActiveRecord::Migration[5.1]
    def change
      add_column :pacientes, :cintura, :float
      add_column :pacientes, :edad, :integer
      add_column :pacientes, :genero, :string
    end
  end