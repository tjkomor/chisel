class Paragraph
attr_reader :html
  def initialize(markdown)
    @markdown = markdown
  end

  def add_p_to_text
     "<p>" + markdown + "</p>"
  end

  def chunks
    @markdown.split("\n")
  end
end

# class Paragraph
#   markdown = ["this is my project"]
#   markdown.insert do |markdown|
#    ("", <p></p>/n)
#  end
# end
#
# class Paragraph
# attr_reader :html
#   def initialize(markdown)
#     @markdown = markdown
#   end
#
#   def add_p_to_text
#      "<p>" + markdown + "</p>"
#   end
# end
#
# markdown = "hey this is markdown"
# paragraph = Paragraph.new(markdown)
# puts paragraph.add_p_to_text
