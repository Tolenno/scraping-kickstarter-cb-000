require 'nokogiri'
require 'pry'

def create_project_hash
  kickstarter = Nokogiri::HTML("/fixtures/kickstarter.html")
end

create_project_hash
binding.pry
