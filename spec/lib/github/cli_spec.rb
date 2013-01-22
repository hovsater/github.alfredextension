require 'spec_helper'

module GitHub
  describe Cli do
    it 'should merge arguments' do
      cli = Cli.new(["/KevinSjoberg", "github"])
      cli.input.should eql('/KevinSjoberg github')
    end

    it 'should detect username command' do
      cli = Cli.new(["KevinSjoberg"])
      cli.command.should eql(:username)
      cli.command_value.should eql('KevinSjoberg')
    end

    it 'should detect repository command' do
      cli = Cli.new(["KevinSjoberg/github.alfredextension"])
      cli.command.should eql(:repository)
      cli.command_value.should eql('KevinSjoberg/github.alfredextension')
    end

    it 'should detect search command' do
      cli = Cli.new(["/KevinSjoberg"])
      cli.command.should eql(:search)
      cli.command_value.should eql('KevinSjoberg')
    end

    it 'invalid input results in nil' do
      cli = Cli.new(["Kevin Sjoberg"])
      cli.command.should eql(:none)
      cli.command_value.should be_nil
    end
  end
end