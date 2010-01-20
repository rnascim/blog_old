class AddDetailToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :resumo, :text
    add_column :posts, :createdby, :string
  end

  def self.down
    remove_column :posts, :createdby
    remove_column :posts, :resumo
  end
end
