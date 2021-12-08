browser = Watir::Browser.new(:chrome)
browser.goto("google.com")
browser.html
# current url
browser.url 
#back to last page
browser.back
# close browser
browser.close

# xml parser
doc = Nokogiri::HTML.parse(browser.html)

# Nokogiri elements have children and we can use CSS selectors

# get all anchor links
doc.css("a")

# get a count of what you selected
doc.css("a").count

# selectes only first item
doc.at_css("a")

# selects 3rd child item
doc.at_css("a:nth-child(3)")

# just selects text
doc.at_css("a:nth-child(3)").text

# scenario 1

# store url in a variable
endpoint = "http://www.basketball-reference.com/players/c/curryst01/gamelog/2016/"

# open requires Ruby 2.7.1 minimum
# doesn't require the ghost or headless browser
open loads the page into memory
require 'open-uri'
open(endpoint)

# load into variable
doc = Nokogiri::HTML.parse(open(endpoint))

# examples are using html tables in this case
# verify that is the correct target with:
doc.css("table").count

# finds the biggest table of the 8 tables on the page
# it sorts, compares and reoganizes biggest to smallest and returns the first item (biggest table)
games_table = doc.css("table").sort { |x,y| y.css("tr").count <=> x.css("tr").count }.first

# to get the rows
rows = games_table.css('tr')


# verify we have too many rows, should be 82.  we have 87
rows.count

#remove headers in rows
rows.search()
rows = rows.select { |row| row.css('th').empty? }
NO rows2 = rows.select { |row| row.css('th').css(":not(.thead)") }
NO rows2 = rows.select { |row| row.css(":not(.thead)")}
rows2 = rows.select { |row| row.css(":not(bold)")}

rows = games_table.css('tr')
rows2 = row.css('td')


###NEW this yields count 5 
rows = rows.select { |row| row.css('td').empty? }

# also didnt work, my selector appears off

#This sorts out some hearders.  picks up 4 headers the rest were games sat out
headers = rows.css('.thead')

## No, it removes the class, not the row
rows2 = rows.remove_class('thead')



