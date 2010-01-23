class AddAvailabilityToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :ativo, :char
  end

  def self.down
  end
end
