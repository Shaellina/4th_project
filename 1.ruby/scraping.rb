require 'httparty'
require 'nokogiri'

uri = "http://finance.naver.com/sise/"
response = HTTParty.get(uri)
#HTTParty를 통해 해당 url에 있는 정보를 가져옴

text = Nokogiri::HTML(response.body)
#Nokogiri를 통해 검색이 용이하도록 변경

kospi = text.css('#KOSPI_now')
# .css를 통해 셀렉터 기준 해당 정보를 검색

puts kospi.text
# .text를 통해 tag안에 있는 내용만 가져옴

