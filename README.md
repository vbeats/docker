# docker

![Alt](https://repobeats.axiom.co/api/embed/2bb093eb515f1c94e7fcc8a39a406a4308e80e04.svg "Repobeats analytics image")

常用的dockerfile 

常用的docker容器

自己`build`的镜像都在  [docker hub](https://hub.docker.com/u/vbeats)


容器内数据卷基本都是`/data`

## sentinel

端口 `8080`

```bash
# 环境变量
ENV TINI_VERSION=v0.19.0
ENV SENTINEL_VERSION=1.8.2
ENV SENTINEL_USERNAME=sentinel
ENV SENTINEL_PASSWORD=123456
```


## gmt

```bash
docker exec -it xxx perl cjk-gs-integrate.pl

# 使用前需要容器先执行一下   否则中文字体不生效
```


## trimble

1. `T02`转`tgd` 命令: `runpkr00 -g -d [-f] x.T02`
2. `tgd`转`o n` 命令: `teqc -tr d -E -week 2056 -O.o CENC -O.ag CEA -O.obs 'C1C2C5L1L2L5P1P2' +obs ./x.o +nav ./x.n +met ./x.m ./x.tgd`
3. `o n`转`s`, 解析`s`文件     命令: `teqc +qc -nav ./x.n ./x.o`
4.  其它: `o`转`d` `d`转`o`  命令: `crx2rnx  rnx2crx`
    `d`到`d.Z` `d.Z`到`d`    命令 : `compress uncompress`

```bash

# runpkr00 参数

-c         # 忽略错误信息
-a         # 输出 APP 文件（如果可能的话）
-d         # 输出 DAT 文件
-e         # 输出 EPH 文件
-i         # 输出 ION 文件
-m         # 输出 MES 文件
-n[!]      # fix NetRS serial number, [!-unconditional]
-s[file]   # 输出 Summary 文件
-f         # 转化时尝试修复损坏文件
-u[0|1]    # 更新文件名 [0-dft, 1-station]
-v         # 使用 verbose 模式
-x[ehi*]   # exclude initial: e-eph, h-header, i-ionutc, *-all
-tfmt      # 输入文件类型 (fmt=r00,t00,t01,t02)
-q         # 将转化过程中的消息输出到标准输出
-g         # use type 27 (if it exists) and allow extended type 17

```    
