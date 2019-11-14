class DropMetaTable < ActiveRecord::Migration[5.1]
    def up
        drop_table :meta 
    end
    
    def down
        raise ActiveRecord::IrreversibleMigration
    end
end