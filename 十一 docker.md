## 打包容器
docker配置教程一：https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04#step-4-%E2%80%94-working-with-docker-images

配置教程二：https://docs.khadas.com/vim1/InstallDocker.html

## docker文档
https://www.cnblogs.com/purpleraintear/p/6007411.html

## docker hub
https://hub.docker.com/search?q=&type=image
## docker基本操作
进入docker模式：sudo docker run -it ubuntu

docker模式下：

docker run -d --name mynginx nginx   #启动nginx镜像，没有会自动pul

docker stop bfd094233f96   #停止一个容器，根据容器 id 进行删除

docker rm bfd094233f96   #删除一个容器

docker attach d20f3dc6cd92  #进入一个正在运行的容器

docker save -o name os   #存储镜像

docker ps -a 显示所有容器ID

docker images 显示镜像
