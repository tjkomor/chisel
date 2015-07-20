class Headers
attr_reader :markdown
  def initialize(markdown)
    @markdown = markdown
  end

  def replaces_hashtags
    if markdown[1] == "#"
      "<h2>" + remove_hash_tags(markdown) + "</h2>"
    elsif markdown[0] == "#"
      "<h1>" + remove_hash_tags(markdown) + "</h1>"
    else
      markdown
    end
  end

  private

  def remove_hash_tags(word)
    word.chars.drop_while do |char|
      char == "#"
    end.join
  end

end
