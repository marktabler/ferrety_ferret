require "ferrety_ferret/version"
require "httparty"
module Ferrety
  
  class Ferret
    attr_accessor :alerts

    def initialize(params)
      clear_alerts
    end

    private

    def add_alert(alert_text)
      @alerts << alert_text
    end

    def clear_alerts
      @alerts = []
    end

  end

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
