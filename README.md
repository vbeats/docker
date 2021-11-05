# docker

常用的dockerfile 

常用的docker容器

自己`build`的镜像都在  [docker hub](https://hub.docker.com/u/vbeats)


容器内数据卷基本都是`/data`


## gmt

```bash
docker exec -it xxx perl cjk-gs-integrate.pl

# 使用前需要容器先执行一下   否则中文字体不生效
```


## trimble

1. `T02`转`tgd` 命令: `runpkr00`
2. `tgd`转`o n` 命令: `teqc`
3. `o`转`s`, 解析`s`文件     命令: `teqc`
4.  其它: `o`转`d` `d`转`o`  命令: `crx2rnx  rnx2crx`
    `d`到`d.Z` `d.Z`到`d`    命令 : `compress uncompress`