require_relative 'asterisk'

class Chisel

  def initialize(markdown)
    @markdown = markdown
  end

  def html
    asterisks = Asterisks.new(@markdown)
    asterisks.replace_asterisks
  end

end
