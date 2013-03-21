desc "Parser"
namespace :parse do
  task irr: :environment do
  	require 'parser.rb'
  	require 'nokogiri'
	require 'open-uri'
  	url = "http://ufa.irr.ru/real-estate/apartments-sale/search/ab_district=4114109129/rooms=3/currency=RUR/date_create=yesterday/"
  	SiteParser::IrrParser.new.parse(url).each{ |a| Advert.create(text: a) }
  end
end