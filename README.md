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
</br>
![1](https://user-images.githubusercontent.com/3145143/52985550-a54f8680-33f4-11e9-9ba7-d8acaabf0655.PNG)

- In Azure devops create build that uses ".net desktop" template
![2](https://user-images.githubusercontent.com/3145143/52985576-c4e6af00-33f4-11e9-861d-3b3b52123828.PNG)

![3](https://user-images.githubusercontent.com/3145143/52985589-d7f97f00-33f4-11e9-9cf6-2fdbd5f569ad.PNG)
![4](https://user-images.githubusercontent.com/3145143/52985594-dc259c80-33f4-11e9-8e52-34b9bb15c49e.PNG)
- to the "Agent job 1" Add "Command Line" task
</br>
![5](https://user-images.githubusercontent.com/3145143/52985601-e182e700-33f4-11e9-9e18-c98f19c67378.PNG)
- with sample script like :
```bat
SET PATH=packages\Tools.InnoSetup.5.6.1\tools
iscc InnoSetupWinform\Script.iss
```
- run your build.
- add new release 
- add empty job stage
- add GitHub release task


