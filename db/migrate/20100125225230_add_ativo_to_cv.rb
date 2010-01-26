class AddAtivoToCv < ActiveRecord::Migration
  def self.up
    add_column :cvs, :ativo, :char
  end

  def self.down
  end
end
