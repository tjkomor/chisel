class Asterisks
  attr_reader :markdown
  def initialize(markdown)
    @markdown = markdown
  end

  def replace_em_tags
    markdown.gsub!(/^[*]/, '<em>')
    markdown.gsub!(/[*]$/, '</em>')
  end

  def replace_strong_tags
    markdown.gsub!(/^[**]/, '<strong>')
    markdown.gsub!(/[**]$/, '</strong>')
  end
end

# markdown = "*hey*"
# asterisk = Asterisks.new(markdown)
# puts asterisk.replace_asterisks

# @markdown = "<em>hey<em>"
# <em>hey<em>

# class Asterisks
# attr_reader :markdown
#   def initialize(markdown)
#     @markdown = markdown
#   end
#
#   def replace_one_asterisk
#     markdown.gsub(/[*]/, '<em>')
#   end
#
#   def replace_two_asterisks
#     markdown.gsub(/[*]/, '</')
# end
#
# markdown = "*hey*"
# asterisk = Asterisks.new(markdown)
# puts asterisk.replace_asterisks
#
#
# *have*
