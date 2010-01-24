class AddAtivoToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :ativo, :char
  end

  def self.down
  end
end
