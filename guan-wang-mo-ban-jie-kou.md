## 1. 接口描述

官网模板接口，直接跨域调用即可获取其相关内容

接口地址：[https://weapp.takecloud.cn/admin/index/getTplList](https://weapp.takecloud.cn/admin/index/getTplList)

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| pageIndex | Integer | 是 | 分页参数：页号（默认为1） |
| pageSize | Integer | 是 | 分页参数：页号（默认为10） |
| tplIndustry | Integer | 是 | 模板类别，类别字典：0:全部,1:电商,2:美食,3:婚庆,4:鲜花,5:酒店,6:超市,7:公司,8:珠宝,9:旅游,10:运动,11:美容,12:家居,13:农产品,14:医药,15:母婴,16:教育,17:摄影,18:社区,19:汽车,20:资讯  ,21:金融,22:家政,23:票务,24:洗浴,25:工具,26:保险,27:服务,28:KTV,29:外卖,30:房产 |

## 3.返回数据

```json
{
    "code": 0,
    "msg": "获取成功",
    "data": {
        "data": [{
            "id": "223",
            "beid": "11",
            "uid": "10",
            "tpl_name": "房产小程序",
            "tpl_industry": "[\"1\"]",
            "tpl_style": "[\"1\",\"2\",\"3\"]",
            "tpl_author": "skywod",
            "tpl_tag": "[\"\房\产\频\道\"]",

            # 模板的图片，核心需要的字段
            "tpl_thumb_url": "https:\/\/weapp-1253522117.image.myqcloud.com\/\/image\/20171204\/6f8f25c1892325d3.png",
            "tpl_thumb_id": "39964",
            "tpl_type": "1",
            "tpl_config": "{\"window\":{\"navigationBarBackgroundColor\":\"#11b1ff\",\"navigationBarTextStyle\":\"white\",\"navigationBarTitleText\":\"\",\"backgroundColor\":\"#f8f8f8\",\"backgroundTextStyle\":\"dark\"},\"tabBar\":{\"color\":\"#939393\",\"selectedColor\":\"#1d8cea\",\"backgroundColor\":\"#ffffff\",\"borderStyle\":\"white\",\"position\":\"bottom\",\"list\":[{\"pagePath\":\"pages\/index\/index\",\"iconPath\":\"\/static\/editor\/img\/tabIcon\/0\/shouye.png\",\"selectedIconPath\":\"\/static\/editor\/img\/tabIcon\/3\/shouye.png\",\"text\":\"首页\",\"selectedIconColor\":\"#1d8cea\",\"iconColor\":\"#939393\"},{\"pagePath\":\"pages\/category\/category\",\"iconPath\":\"\/static\/editor\/img\/tabIcon\/0\/yuyue.png\",\"selectedIconPath\":\"\/static\/editor\/img\/tabIcon\/3\/yuyue.png\",\"text\":\"最新楼盘\",\"iconColor\":\"#939393\",\"selectedIconColor\":\"#1d8cea\",\"name\":\"分类列表\",\"eventType\":\"goodsCategory\",\"eventParam\":{}},{\"pagePath\":\"pages\/cart\/cart\",\"iconPath\":\"\/static\/editor\/img\/tabIcon\/0\/dingdan.png\",\"selectedIconPath\":\"\/static\/editor\/img\/tabIcon\/0\/dingdan.png\",\"text\":\"房产资讯\",\"iconColor\":\"#939393\",\"selectedIconColor\":\"#1d8cea\",\"name\":\"分类列表\",\"eventType\":\"goodsCategory\",\"eventParam\":{}},{\"pagePath\":\"pages\/UserCenter\/UserCenter\",\"iconPath\":\"\/static\/editor\/img\/tabIcon\/0\/geren.png\",\"selectedIconPath\":\"\/static\/editor\/img\/tabIcon\/3\/geren.png\",\"text\":\"个人中心\",\"selectedIconColor\":\"#1d8cea\",\"name\":\"个人中心\",\"eventType\":\"personal\",\"eventParam\":{}}]}}",
            "private": "0",
            "enable": "1",
            "last_update_time": "0000-00-00 00:00:00",
            "create_time": "2017-12-04 14:06:53",
            "pageId": "208"
        },
        ...
}
```



