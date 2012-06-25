module Ferrety
  class HoneyBadger < Ferret
    attr_accessor :term, :url

    def initialize(params)
      super
      @term = @params["term"]
      @url = @params[":url"]
    end


    def search
      if fetched_page.upcase.scan(term.upcase).any?
        add_alert("The page at #{url} matched the term #{term}")
      end
    end

    def fetched_page
      HTTParty.get(url)
    end
  end
end