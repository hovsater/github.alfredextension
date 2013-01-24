# encoding: utf-8
require 'test_helper'

class TestURL < MiniTest::Unit::TestCase
  def test_that_given_username_generates_an_url
    url = GitHub::URL.new(:username, 'KevinSjoberg')

    expected = 'https://github.com/KevinSjoberg'
    assert_equal(expected, url.get)
  end

  def test_that_given_repository_fragment_generate_repository_url
    url = GitHub::URL.new(:repository, 'KevinSjoberg/github.alfredextension')

    expected = 'https://github.com/KevinSjoberg/github.alfredextension'
    assert_equal(expected, url.get)
  end

  def test_that_given_search_term_generates_url
    url = GitHub::URL.new(:search, 'KevinSjoberg')

    expected = 'https://github.com/search?q=KevinSjoberg'
    assert_equal(expected, url.get)
  end

  def test_that_search_terms_get_properly_escaped
    url = GitHub::URL.new(:search, 'Kevin Sjöberg')
    
    expected = 'https://github.com/search?q=Kevin+Sj%C3%B6berg'
    assert_equal(expected, url.get)
  end
end
