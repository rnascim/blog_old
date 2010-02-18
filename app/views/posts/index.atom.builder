atom_feed do |feed|
  feed.title("Rogerio on Tech :: SAP, Rails and technology stuff")
  feed.updated(@posts.first.created_at)
  
  @selected = Post.find(:all, :conditions => {:ativo => '1'} )
  
  # @posts.each do |post|
  @selected.each do |post|
    feed.entry(post) do |entry|
      if post.ativo == '1'
        entry.title(post.assunto)
        entry.content( parse_coderay(post.resumo), :type => 'html')
        entry.author{ |author| author.name(post.createdby) }
        entry.active(post.ativo)        
      end
    end
  end
end