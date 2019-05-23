
class RemoveCinturaFromPacientes < ActiveRecord::Migration[5.1]
    def up
        remove_column :pacientes, :cintura, :float
    end
    
    def down
        add_column :pacientes, :cintura, :float
    end
end