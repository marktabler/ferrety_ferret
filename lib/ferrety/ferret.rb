
module Ferrety
  
  class Ferret
    attr_accessor :alerts

    def initialize(params)
      @alerts = []
      @params = parse(params)
    end

    private

    def parse(params)
      if params.is_a?(Hash)
        params
      else
        JSON.parse(params)
      end
    end

    def add_alert(alert_text)
      @alerts << alert_text
    end

    def clear_alerts
      @alerts = []
    end

  end
end
