require '../list.rb'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ListTest < Minitest::Test

  def test_it_exists
    assert List
  end

  def test_it_replaces_asterisk_wth_li
    markdown = "* Sushi"
    list = List.new(markdown)
    assert_equal "<li>Sushi</li>", list.replace_asterisk_list
  end

  def test_it_replaces_asterisks_in_seperate_words
    markdown = "* Sushi, * Mexican"
    x = markdown.split
    list = List.new(markdown)
    assert_equal "<li>Sushi</li>, <li>Mexican</li>", list.replaces_asterisks_two_words
  end

  def test_it_adds_new_line_between_words
    skip
    markdown = "* Sushi,\n* Mexican"
    list = List.new(markdown)
    assert_equal "<li>Sushi</li>,\n<li>Mexican</li>", list.put_items_on_lines
  end
end
