require 'spec_helper'

describe Ferrety::HoneyBadger do


  it "alerts when a search term is found in a URL" do
    honeybadger = Ferrety::HoneyBadger.new("term" => "foo", url: "http://www.example.com")
    HTTParty.stub(:get).and_return("This is my fake foo web page")
    honeybadger.search
    honeybadger.alerts.size.should == 1
  end

  it "does not alert when the term is missing in the URL" do
        honeybadger = Ferrety::HoneyBadger.new("term" => "foo", url: "http://www.example.com")
    HTTParty.stub(:get).and_return("This is my fake bar web page")
    honeybadger.search
    honeybadger.alerts.size.should == 0
  end
end