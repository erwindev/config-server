# College App Tracker Config Server

## Summary
The College App Tracker Config Server is an application that will allow other applications to centralize the location their configuration settings.  Currently, this application will host configuration settings in a GIT repository.  One advantage of hosting the config server in a GIT repository is the ability to capture and see the changes of your config settings overtime.  It can also give your an application the ability to change the setting without having to restart the application.


## Prequisites
Because the College App Tracker Config Server uses a GIT repository to store the config settings, set up a GIT repo that will contain all the config.  The image below is how I have setup my config-settings repo.

![GIT repo](readme-assets/config-settings.png)

![Example properties file](readme-assets/example-properties.png)   
   
## Run the application

Before you can run this application, you will need to set some environment variables.  Feel free to copy the `env.current.template` into another file like `env.current` file and update the environment variables in that new file before sourcing it.  
  
```
$ source env.current
```  

Compile and create the executable jar file.

```
$ gradle assemble
```

Run the application.

```
$ java -jar build/libs/configuration-service.jar

```

## Access the config settings

```
$ curl http://localhost:9000/simpleshift/dev

```    
