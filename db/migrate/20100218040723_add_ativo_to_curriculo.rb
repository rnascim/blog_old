class AddAtivoToCurriculo < ActiveRecord::Migration
  def self.up
    add_column :curriculos, :ativo, :char
  end

  def self.down
  end
end
