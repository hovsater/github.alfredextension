module GitHub
  class Search
    def initialize(search_term)
      @search_term = search_term
    end
    
    def url
      File.join(GitHub::BASE_URL, "search?q=#{@search_term}")
    end
  end
end