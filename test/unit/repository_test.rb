require 'test_helper'

class Repository < MiniTest::Unit::TestCase
  def setup
    @repository = GitHub::Repository.new('kevinsjoberg', 'repo')
  end

  def test_that_github_user_can_generate_repository_url    
    expected = 'https://github.com/kevinsjoberg/repo'

    assert_equal(expected, @repository.url)
  end

  def test_that_it_default_repository_to_username_when_left_blank
    @repository = GitHub::Repository.new('repo')
    assert_equal('https://github.com/repo/repo', @repository.url)
  end
end
