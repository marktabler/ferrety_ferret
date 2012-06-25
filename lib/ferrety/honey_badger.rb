module Ferrety
  class HoneyBadger < Ferret

    def search(term, url)
      page = fetch_page(url)
      if page.upcase.scan(term.upcase).any?
        add_alert("The page at #{url} matched the term #{term}")
      end
    end

    def fetch_page(url)
      HTTParty.get(url)
    end
  end
end