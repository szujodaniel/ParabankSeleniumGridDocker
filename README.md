# ParabankSeleniumGridDocker

## Selenium-Grid
Selenium Grid allow to run tests on different browser versions.
Also enables cross platform testing and you can easily change the number of browsers to.

To start Selenium-Grid you can use the docker-compose file in "seleniumGrid" directory. Just follow the steps below:
- Login to your DockerHub account.
- Start CLI.
- Go to "seleniumGrid" directory.
- run this command : docker compose up

## Parabank testing from CLI (Windows)
You can run the .xml files from CLI, just follow these steps:
- Start Selenium-Grid (You need to start selenium-grid everytime, before running tests as the webDriver remotely connected to the grid.)
- Go to "ParabankSeleniumGridDocker" directory.
- run this command : java -cp parabankdocker.jar;parabankdocker-tests.jar;libs/* org.testng.TestNG OpenNewAccountTests.xml
  - If you want to run different .xml, just type the .xml name after org.testng.TestNG
## Parabank testing with dockerfile (Windows)
You can run tests with docker. First you need to build a runable image from Dockerfile, after that you can run a container with the parameters below:
- Start Selenium-Grid
- Go to "ParabankSeleniumGridDocker" directory.
- type docker build -t=accountname/containername . (accountname = dockerhub account name)
- type this command: docker run -e HUB_HOST=Ip4Address -e XML=name.xml accountname/containername

  - ip4Address : You can find your ip address with "ipconfing" command on windows.
    - The container can't see the local network by default, where the selenium-grid is running. So, you need to give the local network ip address.
  
  - XML the name of the .xml you want to run (OpenNewAccountTests, LoginTests, etc)
    

