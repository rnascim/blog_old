class AddAtivoToAbout < ActiveRecord::Migration
  def self.up
    remove_column :abouts, :active, :char
    add_column :abouts, :ativo, :char
  end

  def self.down
  end
end
