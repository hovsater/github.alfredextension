require 'test_helper'

class SearchTest < MiniTest::Unit::TestCase
  def test_that_it_return_a_relevant_url
    @github_search = GitHub::Search.new('mysearchterm')
    expected = 'https://github.com/search?q=mysearchterm'
    
    assert_equal(expected, @github_search.url)
  end
end