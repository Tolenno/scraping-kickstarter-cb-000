require 'nokogiri'
require 'pry'

def create_project_hash
  :projects = {}
  kickstarter = Nokogiri::HTML(html)
end

binding.pry

create_project_hash