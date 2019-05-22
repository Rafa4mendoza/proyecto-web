
class RemoveCinturaFormPacientes < ActiveRecord::Migration[5.0]
    def change
      remove_column :pacientes, :cintura, :float
    end
  end