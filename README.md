# InnoSetup integation with Azure DevOps CI-CD
innosetup is free famous installer builder for windows [official site](http://www.jrsoftware.org/).


![alt](https://www.kymoto.org/images/content/logos/isstudio_logo.png)

## Need
- [Inno Setup Downloads](http://www.jrsoftware.org/isdl.php)
- [Inno Script Studio](https://www.kymoto.org/products/inno-script-studio/) visual script builder

## steps
- In visual studio project add the nuget package "Tools.InnoSetup"
- Use (Script Studio) to generate "Script.iss" in visual studio project folder

- In github install "Azure Pipelines" from "Marketplace"
![alt](./Capture/1.png)
- In Azure devops create build that uses ".net desktop" template
![alt](./Capture/2.png)
![alt](./Capture/3.png)
![alt](./Capture/4.png)
- to the "Agent job 1" Add "Command Line" task 
![alt](./Capture/5.png)
- with sample script like :
```bat
SET PATH=packages\Tools.InnoSetup.5.6.1\tools
iscc InnoSetupWinform\Script.iss
```
- run your build.
- add new release 
- add empty job stage
- add GitHub release task


