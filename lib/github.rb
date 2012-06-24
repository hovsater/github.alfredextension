$:.unshift(File.expand_path('..', __FILE__))

require 'github/user'
require 'github/search'
require 'github/repository'

module GitHub
  BASE_URL = 'https://github.com'
end