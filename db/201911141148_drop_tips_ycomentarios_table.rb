class DropTips_ycomentariosTable < ActiveRecord::Migration[5.1]
    def up
        drop_table :tips_ycomentarios 
    end
    
    def down
        raise ActiveRecord::IrreversibleMigration
    end
end