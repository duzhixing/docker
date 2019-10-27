# make.sh
#!/bin/sh
git pull
echo "开始制作镜像..."
image_tag=`date +%Y%m%d_%H%M`
echo "当前时间：$image_tag"
docker build -t ccr.ccs.tencentyun.com/sk/api:${image_tag} .
echo "制作镜像成功!"

docker login --username=dzx -p=dzx19961213 ccr.ccs.tencentyun.com
docker push ccr.ccs.tencentyun.com/sk/api:${image_tag}
