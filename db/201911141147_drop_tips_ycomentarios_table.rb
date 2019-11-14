class DropTips_ycomentariosTable < ActiveRecord::Migration[5.1]
    def up
        drop_table :tipsy_comentarios 
    end
    
    def down
        raise ActiveRecord::IrreversibleMigration
    end