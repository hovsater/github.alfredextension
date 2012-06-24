module GitHub
  class Repository
    def initialize(username, repository = nil)
      @username = username
      @repository = repository || username
    end
    
    def url
      File.join(GitHub::BASE_URL, @username, @repository)
    end
  end
end