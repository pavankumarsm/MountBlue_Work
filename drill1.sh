#!/bin/bash
 
# create base folder directory  Structure  
mkdir -p hello

# create subfolders and files 
mkdir -p hello/five/six/seven
mkdir -p hello/one/two/three/four

# create files using touch which helps in creating txt and log files

touch hello/five/six/c.txt
touch hello/five/six/seven/error.log
touch hello/one/a.txt 
touch hello/one/b.txt
touch hello/one/two/d.txt
touch hello/one/two/three/e.txt
touch hello/one/two/three/four/access.log

# delete all the files having the .log extension
find -type f -name "*.log" -delete
 
# Add the following content to a.txt
echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" > hello/one/a.txt

# delete the directory named five -r is used for the recurssion and -f is used forcefully delete the file 
rm -rf five

#Rename the one directory to uno 'mv' is command move 
mv hello/one hello/uno



# move a.txt to the  two directory 
mv hello/uno/a.txt hello/uno/two
