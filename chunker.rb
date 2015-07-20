class Chunker(markdown)

  def intialize
    @markdown = markdown
  end

  def seperate_into_chunks(markdown)
    @markdown.split do |markdown|
      if ("\n\n")
        markdown
      end

      elsif markdown[0] != '#'
        puts
      end

end

chunker = Chunker.new
