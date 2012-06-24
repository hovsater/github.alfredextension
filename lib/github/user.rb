module GitHub
  class User
    attr_reader :url

    def initialize(username)
      @username = username
      @url = File.join(GitHub::BASE_URL, @username)
    end
  end
end