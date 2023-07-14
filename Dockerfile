FROM openjdk:19-jdk-alpine3.16

# Workspace

WORKDIR /usr/parabankTests

# ADD .jar from target directory and resources into this image

ADD parabankdocker.jar 							parabankdocker.jar
ADD parabankdocker-tests.jar 					parabankdocker-tests.jar
ADD libs										libs
ADD resources									resources

#ADD suite files

ADD LoginTests.xml								LoginTests.xml
ADD OpenNewAccountTests.xml						OpenNewAccountTests.xml
ADD RegressionTests.xml							RegressionTests.xml
ADD RequestLoanTests.xml						RequestLoanTests.xml
ADD SanityTests.xml								SanityTests.xml
ADD SmokeTests.xml								SmokeTests.xml
ADD TransferFundsTests.xml						TransferFundsTests.xml

#Environment variables : XML, BROWSER, HUB_HOST

ENTRYPOINT java -cp parabankdocker.jar:parabankdocker-tests.jar:libs/* -DBROWSER=$BROWSER -DHUB_HOST=$HUB_HOST org.testng.TestNG $XML
