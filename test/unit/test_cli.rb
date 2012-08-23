require 'test_helper'

class TestCli < MiniTest::Unit::TestCase
  def test_that_arguments_is_being_merged
    cli = GitHub::Cli.new(["/KevinSjoberg", "github"])
    assert_equal(cli.input, '/KevinSjoberg github')
  end

  def test_that_username_command_is_being_properly_detected
    cli = GitHub::Cli.new(["KevinSjoberg"])
    assert_equal(:username, cli.command)
    assert_equal('KevinSjoberg', cli.command_value)
  end

  def test_that_repository_command_is_being_properly_detected
    cli = GitHub::Cli.new(["KevinSjoberg/github.alfredextension"])
    assert_equal(:repository, cli.command)
    assert_equal('KevinSjoberg/github.alfredextension', cli.command_value)
  end

  def test_that_search_command_is_being_properly_detected
    cli = GitHub::Cli.new(["/KevinSjoberg"])
    assert_equal(:search, cli.command)
    assert_equal('KevinSjoberg', cli.command_value)
  end

  def test_that_invalid_input_result_in_none
    cli = GitHub::Cli.new(["Kevin Sjoberg"])
    assert_equal(:none, cli.command)
    assert_equal(nil, cli.command_value)
  end
end

