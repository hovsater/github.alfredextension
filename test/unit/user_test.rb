require 'test_helper'

class User < MiniTest::Unit::TestCase
  def setup
    @github_user = GitHub::User.new('kevinsjoberg')
  end

  def test_that_github_user_generates_an_url
    exptected = 'https://github.com/kevinsjoberg'

    assert_equal(exptected, @github_user.url)
  end
end