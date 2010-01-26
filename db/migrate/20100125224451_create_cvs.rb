class CreateCvs < ActiveRecord::Migration
  def self.up
    create_table :cvs do |t|
      t.text :body
      t.char :ativo

      t.timestamps
    end
  end

  def self.down
    drop_table :cvs
  end
end
