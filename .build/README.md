# help-portal
## Setup

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
