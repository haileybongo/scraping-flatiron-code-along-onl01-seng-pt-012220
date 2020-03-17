require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
<<<<<<< HEAD
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    #doc.css(".post").each do |post|
     # course = Course.new
      #course.title = post.css("h2").text
      #course.schedule = post.css(".date").text
      #course.description = post.css("p").text
   # end
  end
  
  def get_courses
    self.get_page.css(".post")
  end

  def make_courses
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end
=======
    doc = Nokogiri::HTML)open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    binding.pry
  end
  
  def get_courses
  end

  def make_courses
>>>>>>> 0d56954aa538d604ac2c1ba46a7b8cb74cf8b02e
  end
  
end

<<<<<<< HEAD
#Scraper.new.get_page
=======
Scraper.new.get_page
>>>>>>> 0d56954aa538d604ac2c1ba46a7b8cb74cf8b02e

