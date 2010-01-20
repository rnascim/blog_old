class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :id
      t.string :assunto
      t.text :texto

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
