# simple-node-azure
simple node js application
![Image](https://github.com/user-attachments/assets/64f90c2d-80b1-4296-9eea-e1d7423fe32f)

Learn : 
   
    - https://docs.github.com/en/actions/how-tos/deploy/deploy-to-third-party-platforms/nodejs-to-azure-app-service
    - https://github.com/Azure/webapps-deploy


## Steps To Deploy Using Github Actions and Azure 

   
    - Login to Azure 
        
        - Create a Resource Grouop

        - Create a App Services -----> Web App Services 

        - Download

            - Download publish profile 
              |
              |
              |------- Download publish profile Basic authentication is disabled. azure   # this error will get 
                              |
                              |
                              |-------- Settings 
                                         |--Configuration 
                                                |--General settings
                                                    |
                                                    |--- Platform settings SCM Basic Auth Publishing Credentials (Enable the - CheckBox)


    - Login to Github

        - Create Github Repo 

        - Push your code 


        - Go To --- Settings ----> Secrets and Variables 
                                          |
                                          |------- Actions ---> New Repository Secret
                                                                 |
                                                                 |----- AZURE_WEBAPP_NAME (i.e -node-welcome-application)
                                                                 |
                                                                 |----- AZURE_WEBAPP_PUBLISH_PROFILE (i.e - Download publish profile)           



### Verify and Monitor 

    - Open - App Services 
               |
               |--- select the (create web app service i.e- node-welcome-application)


        - Copy 
           |
           |-Default domain
             |-(i.e - https://node-welcome-application-f9f8fnb9d7bgcthq.canadacentral-01.azurewebsites.net/)            


    
    - Github
        |--Repo
            |---- Actions (Open In Newtab and Check the Flow)



    - refere to --- images for reference      



### How to Run This Project At Local Environment 

    - cd Documents/simple-node-azure
    
    - npm install

    - npm start 

    - node server.js 

    - http://localhost:3000/



### How to Start From Docker File 


    - Build the Docker Image (Dockerfile   # file name)
            
            - sudo docker build -t simple-node-app .

    - Run the Application From Docker 

         -  sudo docker run -p 3000:3000 simple-node-app 



## Docker Command
     
        - docker --version
        - docker ps 
        - docker ps -a
      


## Once - Application Run and Deploy - How to Publish the Image to Docker Hub 

     
     - Login to Docker Hub 
          
          - docker login 


     - Create the Tag For Docker Image 

         - sudo docker tag simple-node-app itzownway/simple-node-app:latest
         - sudo docker images 


     - Pulbish the Image to Docker
         
         - sudo docker push itzownway/simple-node-app:latest


     - Verify the Docker Image 

        - 👉 https://hub.docker.com/repositories

              - itzownway/simple-node-app

     - Now Ask People To Pull the Image and Use

              - docker run -p 3000:3000 itzownway/simple-node-app:latest





### Docker Permission Issue 

 
     - sudo usermod -aG docker $USER

     - newgrp docker

     - docker ps

     - docker info | grep Username

     - 



### Deploy Node Js Application to Azure using Docker Image 