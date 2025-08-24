Context: 
In this assignment, you will create a backend application using FastAPI, containerize it with Docker, deploy it in a Kubernetes cluster (Ex: Minikube) with networking and load balancing, and monitor its performance with Prometheus. You will implement, test, and monitor your application by tracking metrics like the number of requests received, CPU usage, and memory usage for each replica. 

**Task 1: Create the Backend Application using FastAPI **
Create a FastAPI application with a single endpoint as “/get_info”. 
The endpoint should return a JSON object containing application information like APP_VERSION and APP_TITLE. 
Initially set APP_VERSION to "1.0" and APP_TITLE to a title of your choice. These values should be dynamically injected as environment variables. 
● Create a new directory for your project in your laptop and name it app-<roll_number> 
● Create a Python file named main.py in the project directory. 
● Add necessary libraries and code needed to create the end point mentioned above. 
● Deploy your fastapi application locally using uvicorn server. 
● Open the file in the browser (Ex: chrome) and ensure you see response for your end point when called. 
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

**Task 2: Dockerize the Backend Application**
Install and set up Docker on your local machine. Dockerize the application as stated below. 
● Successfully install Docker Desktop on your Windows machine. 
● Create a Dockerfile in the project directory.  
● Write the Dockerfile instructions to: 
a. Use a base image (e.g., python). 
b. Copy the main.py file into the appropriate directory in the container. 
c. Expose port 8000 for the app on the host as well. 
● Build the Docker image using the Dockerfile and name it img-<roll_number>. 
● Verify the docker image creation using appropriate docker commands. 
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

**Task 3: Run the Docker Container** 
Create a docker container by running the docker image built above as stated below. 
● Run a Docker container using the built image and name the container cnr-<roll_number>. 
● Verify the docker container creation using appropriate docker commands. 
● Verify that the application is accessible locally by opening a web browser (Ex: chrome on laptop) and navigating to http://localhost:8000. 
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

**Task 4: Deploy the Docker Image to a Kubernetes Cluster **
Deploy the above docker image built on a cloud platform as stated below.  
● Using your Docker image above, create a Deployment in Minikube (or another Kubernetes environment) running 2 replicas of your FastAPI application.
● Configure the deployment to read the APP_VERSION and APP_TITLE values from a Kubernetes ConfigMap named config-<roll_number>.yaml.  
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

**Task 5: Configure Networking with a Load Balancer in the Kubernetes Cluster** 
● Set up a Load Balancer to balance requests across both replicas.  
● Make sure the Service routes requests to both replicas and allows external access to the /get_info endpoint. 
● Use curl or any HTTP client tool (Ex: postman or localhost:8000/docs) to make several requests to the /get_info endpoint. 
● Capture and document logs showing requests being balanced across both replicas. 
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

**Task 6: Configure Prometheus for Metrics Collection **
● Set up Prometheus in your Kubernetes cluster to collect metrics on your app such as: 
o The number of requests received by the /get_info endpoint. 
o CPU and memory usage for each replica. 
● Test that Prometheus is correctly collecting metrics, and submit screenshots or logs showing the request count, CPU usage, and memory usage data for each replica. 
● Document the entire process step-by-step, including screenshots and any challenges encountered. 

#CREATE A ENV 
APP_VERSION=1.0
APP_TITLE="HUNGRY"
PORT=8081
