# The following script is used to debug the process allowing a user to view the html content output locally

sudo rm -r ../md2html2/demo-content/
mkdir ../md2html2/demo-content
cp -r ../../*  ../md2html2/demo-content/
cd ../md2html2/
sudo docker build -t build-help-site  .  
sudo docker run -dit --name build-help-site-live build-help-site        
rm -r demo-content/
cd ../apache2

sudo docker stop running-help-site
sudo docker rm running-help-site

sudo rm -r help-portal/
sudo docker cp build-help-site-live:/build/_site help-portal/
sudo rm -r demo-content/
sudo docker cp build-help-site-live:/demo-content demo-content/
sudo docker stop build-help-site-live
sudo docker rm build-help-site-live
sudo docker build -t help-site .
sudo docker run -dit --name running-help-site -p 8080:80 help-site    
  