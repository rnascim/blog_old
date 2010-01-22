class Post < ActiveRecord::Base
  validates_presence_of :assunto, :resumo, :texto
  has_many :comments
  has_many :tags 
end
