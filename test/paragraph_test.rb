gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../paragraph'

class ParagraphTest < Minitest::Test
  def test_it_exists
    assert Paragraph
  end

  def test_chunking_text
    markdown = " "
    paragraph = Paragraph.new(markdown)
    assert_equal [" "], paragraph.chunks
  end

  def test_chunking_word
    markdown = "hey"
    paragraph = Paragraph.new(markdown)
    assert_equal ["hey"], paragraph.chunks
  end

  def test_chunking_multiple_lines
  markdown = "hey what's up,\nhow's it going"
  paragraph = Paragraph.new(markdown)
  assert_equal ["hey what's up,", "how's it going"], paragraph.chunks
  end

end
