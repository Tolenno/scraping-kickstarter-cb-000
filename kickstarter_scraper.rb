require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read("fixtures/kickstarter.html")
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

# projects: kickstarter.css("li.project.grid_4")
# title: kickstarter.css("h2.bbcard_name strong a").text
# image: kickstarter.css("div.project-thumbnail a img").attribute("src").value
# description: kickstarter.css("p.bbcard_blurb").text
# location: kickstarter.css("span.location-name").text
create_project_hash
