print("Jay Rathod")
print("T127")

import requests
from bs4 import BeautifulSoup
url = "https://www.facebook.com/people/Jay-Rathod/100007731946899/"

#Step 1: Get the HTML
r = requests.get(url)
htmlContent = r.content
print("Printing HTML Content")
print(htmlContent)

#Step 2: Parse the HTML
soup = BeautifulSoup(htmlContent, 'html.parser')

soup2 = BeautifulSoup('<p class="body">Jay Rathod T127</p>', 'html.parser')

print(soup.prettify)

#Step 3: HTML Tree Traversal



#Get the title of the HTML Page
title = soup.title
print("Printing Title of the HTML Page")
print(title)

#Get all the paragraphs from the Page
paras  = soup.find_all('p')
print("Printing all the paragraphs from the page")
print(paras)

#Get all the anchor tags from the page
anchors = soup.find_all('a')
print("Printing all the anchor tags from the page")
print(anchors)

#Get first element in the HTML page
print("Printing First Paragraph of the HTML Page")
print(soup.find('p'))

#Get classes of any element in the HTML page
print("Printing Class of p element ")
print(soup2.p['class'])

#find all the elements with class lead
print("Finding all the elements with class lead")
print(soup.find_all("p", class_=" "))

#Get the text from the tags/soup
print("Printing text from first paragraph")
print(soup2.p.get_text())
print("Printing text from whole HTML Page")
print(soup.get_text())


#Get all the anchor tags from the page
anchors = soup.find_all('a')
print("Printing Anchors")
print(anchors)
all_links = set()
#Get all the links on the page
for link in anchors:
   if(link.get('href') != '#'):
     linkText = "https://www.facebook.com" +link.get('href')
     all_links.add(link)
     print(linkText)
