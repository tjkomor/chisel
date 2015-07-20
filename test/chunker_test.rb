gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../chisel'

class ChiselTest < Minitest::Test
  def test_asterisk_paragraph
    chisel = Chisel.new("*hello* world")
    assert_equal "<p><em>hello</em> world</p>\n", chisel.html
  end

  def test_another_asterisk_paragraph
    chisel = Chisel.new("hey how's *it* going?")
    assert_equal "<p>hey how's <em>it</em> going?</p>\n", chisel.html
  end
end
