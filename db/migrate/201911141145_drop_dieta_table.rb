class DropDietaTable < ActiveRecord::Migration[5.1]
    def up
        drop_table :dieta 
    end
    
    def down
        raise ActiveRecord::IrreversibleMigration
    end
end