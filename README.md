# gfwlist

> one custom gfwlist && its dnsmasq.conf && adblocklist


## gfwlist

配置文件下载：

* gfwlist:

### 更新官方 gfwlist

```bash
$ sh origin/update.sh
```

### 发布自定义 gfwlist

修改 `rule-list.txt`, 添加或删除域名

发布: 

```
$ sh deploy.sh
```

## dnsmasq.conf

> 参考 [cokebar/gfwlist2dnsmasq](https://github.com/cokebar/gfwlist2dnsmasq)

修改说明：

* 修改 gfwlist.txt 下载地址为自定义的 gfwlist.txt
* 修改默认端口 5353 为 5311


## adblocklist

> 参考 [jdlingyu/ad-wars](https://github.com/jdlingyu/ad-wars), [neoFelhz/neohosts](https://github.com/neoFelhz/neohosts), [StevenBlack/hosts](https://github.com/StevenBlack/hosts)

