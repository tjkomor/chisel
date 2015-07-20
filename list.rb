class List
  attr_reader :markdown, :x
  def initialize(markdown)
    @markdown = markdown
    @x = x
  end

  def replace_asterisk_list
    if markdown[0] == "*"
      "<li>" + remove_asterisks(markdown) + "</li>"
    end
  end

    def replaces_asterisks_two_words
       x.map do |word|
         if word[0..1] == "*\n"

        end
    end

    def put_items_on_lines
      if markdown[0] == "*"
        replace_asterisk_list + "\n"
      end
    end

    def remove_asterisks(word)
       word.chars.drop_while do |char|
         char == "*"
       end.join
     end


   end


# def replaces_hashtags
#   if markdown[1] == "#"
#     "<h2>" + remove_hash_tags(markdown) + "</h2>"
#   elsif markdown[0] == "#"
#     "<h1>" + remove_hash_tags(markdown) + "</h1>"
#   else
#     markdown
#   end
# end
#
# private
#
# def remove_hash_tags(word)
#   word.chars.drop_while do |char|
#     char == "#"
#   end.join
