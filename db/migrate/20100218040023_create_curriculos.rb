class CreateCurriculos < ActiveRecord::Migration
  def self.up
    create_table :curriculos do |t|
      t.text :body
      
      t.timestamps
    end
  end

  def self.down
    drop_table :curriculos
  end
end
