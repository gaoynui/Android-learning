## 简单的说，Gradle是一个构建工具，它是用来帮助我们构建app的，构建包括编译、打包等过程。我们可以为Gradle指定构建规则，然后它就会根据我们的“命令”自动为我们构建app。
## 配置文件
![](https://github.com/gaoynui/AndroidTV-learning/blob/master/pics/gradle%E7%9B%AE%E5%BD%95%E4%B8%8B%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6.PNG?raw=true)  
### build.gradle
代表了app Module的构建脚本，它定义了应用于本模块的构建规则
### gradle.properties
这个文件中定义了一系列供build.gradle使用的常量，比如keystore的存储路径、keyalias等。
### gradlew & gradlew.bat
gradlew为Linux下的shell脚本，gradlew.bat是Windows下的批处理文件。gradlew是gradle wrapper的缩写，也就是说它对gradle的命令进行了包装，比如我们进入到指定Module目录并执行“gradlew.bat assemble”即可完成对当前Module的构建（Windows系统下）。
### local.properties
这个文件中定义了一些本地属性，比如SDK的路径。
### setting.gradle
假如我们的项目包含了不只一个Module时，我们想要一次性构建所有Module以完成整个项目的构建，这时我们需要用到这个文件。
## gradle wrapper
Wrapper是对Gradle的一层包装,便于在团队开发过程中统一Gradle构建的版本。  
Wrapper启动Gradle时会检查Gradle有没有被下载关联，若没有就会从配置的地址下载并运行构建。
