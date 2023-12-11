print("Jay Rathod")
print("T127")

import requests
from bs4 import BeautifulSoup

url=("www.facebook.com")
code=requests.get("https://"+url)

plain=code.text
s=BeautifulSoup(plain)

for link in s.find_all("a"):
    print(link.get("href"))
