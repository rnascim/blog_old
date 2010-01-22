atom_feed do |feed|
  feed.title("Rogerio on Tech :: Rails, SAP and technology stuff")
  feed.updated(@posts.first.created_at)
  
  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.assunto)
      entry.content(post.resumo, :type => 'html')
      entry.author{ |author| author.name(post.createdby) }
    end
  end
end