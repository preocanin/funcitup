#!/bin/python

import re
import os

os.system("elm-make src/Main.elm --output Main.html")

cin = open("Main.html", "r")
cout = open("index.html", "w")

link_list = [
# add links here (href, integrity)
('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css', 'sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u'),
('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css', 'sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp')
]

print_pattern = "<link rel='stylesheet' href='%s' integrity='%s' crossorigin='anonymus'>"

links = ""
for link in link_list:
    links += print_pattern % link
links += "</head>"

line = cin.readline();
while line:
    search_obj= re.search(r"</head>", line)
    if search_obj:
        line = line.replace("</head>", links)
    cout.write(line);
    line = cin.readline()

cin.close()
cout.close()

os.remove("Main.html")

