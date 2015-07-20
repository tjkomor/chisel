require_relative '../asterisk'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AsteriskTest < Minitest::Test
  def test_it_exists
    assert Asterisks
  end

  def test_it_replaces_asterisks
    markdown = "*hey*"
    asterisk = Asterisks.new(markdown)
    assert_equal '<em>hey</em>', asterisk.replace_em_tags
  end

  def test_replaces_asterisk_in_sentence
    markdown = "hey how's *it* going?"
    asterisk = Asterisks.new(markdown)
    assert_equal "hey how's <em>it</em> going?", asterisk.replace_em_tags
  end

  def test_replaces_two_asterisks
    markdown = "**hey**"
    asterisk = Asterisk.new(markdown)
    assert_equal "<strong>hey</strong>", asterisk.replace_strong_tags
  end
end
