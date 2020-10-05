#! /usr/bin/env make 

##########Assignment 6 #################
# Author: Valentina Gonzalez Rostani
# Date: October , 2020

# This Makefile is part of the assignment 7 where I need to create a branch and the output should be a pdf. I couldnt to that, so I am just practicing with the creation of the branch, but I only changed the name of the outcome, I dont have my pdf yet.  

#This files contains the target to create my website

#My steps:
#      1. re-size the figure and add a line after that 
#      2. merging all the txt --> here it is important to notice that we need to add empty line after approach and litrevie
#      3. creating an markdown file with all the files 
#      4. converting the md file to html using pandoc

#Here I am creating an HTML file
All.html : content.md
	pandoc content.md -s --mathjax -f markdown+tex_math_dollars -t html -o All.html
	
#Here I am putting together everything and also saving as a md file
content.md : LitReview.txt preamble.txt mytargetApproachTOconclusion.txt
	cat preamble.txt LitReview.txt mytargetApproachTOconclusion.txt > content.md
#Here I am adding an empty line after approach and also merging approach, results and conclusion
mytargetApproachTOconclusion.txt : approach.txt results.txt conclusion.txt
	echo >> approach.txt | cat approach.txt results.txt conclusion.txt > mytargetApproachTOconclusion.txt
#Here I am re-sizing the figure. I use sed to replace .png) for .png){ width=50% }
LitReview.txt : litReview.txt
	sed 's/=75% }/=75% }\n/' litReview.txt >> LitReview.txt

#Now I want to clean the files
.PHONY: clean
clean:  
	rm -f content.md
	rm -f mytargetApproachTOconclusion.txt
	rm -f LitReview.txt

