module GitHub
  class URL
    BASE_URL = 'https://github.com'

    attr_accessor :generate

    def initialize(context, fragment)
      @fragment = fragment

      @url = if context === :search
        File.join(BASE_URL, "search?q=#{CGI.escape(@fragment)}")
      else
        File.join(BASE_URL, @fragment)
      end
    end

    def get
      @url
    end
  end
end
