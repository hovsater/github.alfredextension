# encoding: utf-8
require 'spec_helper'

module GitHub
  describe URL do
    it "generates a username url" do
      url = GitHub::URL.new(:username, 'KevinSjoberg')

      expected = 'https://github.com/KevinSjoberg'
      url.get.should eql(expected)
    end

    it "generates repository url" do
      url = GitHub::URL.new(:repository, 'KevinSjoberg/github.alfredextension')

      expected = 'https://github.com/KevinSjoberg/github.alfredextension'
      url.get.should eql(expected)
    end

    it "generates search url" do
      url = GitHub::URL.new(:search, 'KevinSjoberg')

      expected = 'https://github.com/search?q=KevinSjoberg'
      url.get.should eql(expected)
    end

    it "escapes search query" do
      url = GitHub::URL.new(:search, 'Kevin Sjöberg')
      expected = 'https://github.com/search?q=Kevin+Sj%C3%B6berg'
      url.get.should eql(expected)
    end
  end
end