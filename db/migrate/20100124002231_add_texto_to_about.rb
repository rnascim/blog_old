class AddTextoToAbout < ActiveRecord::Migration
  def self.up
    remove_column :abouts, :text, :char
    add_column :abouts, :texto, :char
  end

  def self.down
  end
end
