require '../headers.rb'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class HeadersTest < Minitest::Test
  def test_file_exists
    assert Headers
  end

  def test_h1_replaces_hastag
    markdown = "#hey this is markdown"
    header = Headers.new(markdown)
    assert_equal "<h1>hey this is markdown</h1>", header.replaces_hashtags
  end

  def test_h2_replaces_two_hashtags
    markdown = "##hey this is markdown"
    header = Headers.new(markdown)
    assert_equal "<h2>hey this is markdown</h2>", header.replaces_hashtags
  end
end
