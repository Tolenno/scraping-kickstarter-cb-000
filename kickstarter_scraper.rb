require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read("fixtures/kickstarter.html")
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      image = projects.css("div.project-thumbnail a img").attribute("src").value
      projects[image.to_sym] = {}

      description = projects.css("p.bbcard_blurb").text
      projects[description.to_sym] = {}

      location = projects.css("span.location-name").text
      projects[location.to_sym] = {}

      percent_funded = projects.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
      projects[percent_funded.to_sym] = {}
    }
  end
  projects
end

# projects: kickstarter.css("li.project.grid_4")
# title: kickstarter.css("h2.bbcard_name strong a").text
# image: projects.css("div.project-thumbnail a img").attribute("src").value
# description: projects.css("p.bbcard_blurb").text
# location: projects.css("span.location-name").text
# percent_funded: projects.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
create_project_hash
