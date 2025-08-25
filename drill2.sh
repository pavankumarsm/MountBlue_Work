#!/bin/bash

# first we download the content from the given link
wget -O harry.txt "https://raw.githubusercontent.com/bobdeng/owlreader/master/ERead/assets/books/Harry%20Potter%20and%20the%20Goblet%20of%20Fire.txt" 

# for printing first n lines we use 'head' command
head -n 3 harry.txt

#for printing last n lines we use 'tail' command
tail -n 3 harry.txt

#to get all occurance of the string we use grep and wc is for count words 
grep -oi 'Harry' harry.txt | wc -l

grep -oi 'Ron' harry.txt | wc -l

grep -oi 'Hermione' harry.txt | wc -l

grep -oi 'Dumbledore' harry.txt | wc -l

# Print lines from 100 through 200 in the book
sed -n '100,200p' harry.txt

#How many unique words are present in the book  we use 'sort' the unique word using '-u'
grep -oE '\w+' harry.txt | tr '[:upper:]' '[:lower:]' | sort -u | wc -l




###### Processesm, Ports #################

# List your browser's process ids (pid) and parent process ids(ppid) ps and grep is used for filter your browser process 
ps -eo pid,ppid,comm | grep chrome

# Stop the browser application from the command line use kill
kill (port number)

# List the top 3 processes by CPU usage.
ps -eo pid,ppid,user,pcpu,pmem,comm --sort=-pcpu | head -n

# List the top 3 processes by memory usage.
ps -eo pid,ppid,user,pcpu,pmem,comm --sort=-pmem | head -n

#Start a Python HTTP server on port 8000
python3 -m http.server 8000

#Open another tab. Stop the process you started in the previous step after we get the pid number use kill  
ps -eo pid,comm | grep python

kill (the pid number)

#Start a Python HTTP server on port 90
sudo python3 -m http.server 90

#Display all active connections and the corresponding TCP / UDP ports '-t' tcp connection '-u' udp connection '-l' listening socket' '-n' port number '-p' show process using the port.
ss -tuln
ss -tulnp   

#Find the pid of the process that is listening on port 5432
sudo ss -ltnp | grep 5432



