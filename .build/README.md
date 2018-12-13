# help-portal build

##Overview
* The help portal build contains the script and logic required to convert the help portal markdown content into an html site on an apache docker image 

## Setup
* In the root directory a .travis.yml file contains logic to execute the process in travis CI
* Enable the repository to be used by Travis or your CI and configure the following environment variables 

###CI ENvironment variables
* Set the following environment variables in you CI interface
  * ARTIFACT_PASSWORD  
  * ARTIFACT_USERNAME

##Execution
* Docker login -u ARTIFACT_USERNAME
* docker pull ARTIFACT_USERNAME/help-site
* docker run -dit --name running-help-site -p 8080:80 ARTIFACT_USERNAME/help-site    

  
##Utilities
* https://pandoc.org/
   * Is used to pre-convert SUMMARY.md to static HTML during the bulid process 
* https://jekyllrb.com/
   * Is used to convert the md content into an html website   

##Development
* The logic to convert the md content is situated in the md2html2/dockerfile and can be executed locally using the debug/execute.sh for development purposes.
* Having the logic within docker greatly speeds up development and testing as compared to a 100% yaml solution.
* Running debug/execute.sh runs the whole build process, converting the md to html, building an apache image that is run and the site available at localhost:8080.
