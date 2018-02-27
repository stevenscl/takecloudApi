# 查看商品列表

## 1. 接口描述

本接口（admin/goods/goodsList）用于获取小程序的商品列表。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| pageIndex | Integer | 否 | 分页参数：页号（默认为1） |
| pageSize | Integer | 否 | 分页参数：页长（默认为10） |
| status | String | 是 | 商品状态，可选状态有：**待上架、已上架、已下架**，如需筛选多个**请用\#分开**。例如：获取全部状态的商品  **待上架\#已上架\#已下架** |
| promote | String | 是 | 商品促销状态，可选促销状态有：**秒杀、拼团、砍价、无促销**，如需筛选多个**请用\#分开**。例如：获取全部促销状态的商品 **秒杀\#拼团\#砍价\#无促销** |

## 3. 输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| data | Array | 商品列表 |
| total | String | 商品总数 |

## 4. 错误返回

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/goods/goodsList?pageIndex=1
&pageSize=10
&status=%E5%BE%85%E4%B8%8A%E6%9E%B6%23%E5%B7%B2%E4%B8%8A%E6%9E%B6%23%E5%B7%B2%E4%B8%8B%E6%9E%B6
&promote=%E7%A7%92%E6%9D%80%23%E6%8B%BC%E5%9B%A2%23%E7%A0%8D%E4%BB%B7%23%E6%97%A0%E4%BF%83%E9%94%80
&<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取商品列表数据成功",
    "data": {
        "data": [
            {
                "id": "2562",    // 商品Id
                "thumb": {    // 商品封面图
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",
                    "id": "15920"
                },
                "beid": "53",    // 小程序Id
                "title": "香菜测试拼团",    // 商品名称
                "desc": "",
                "content": null,
                "sales": "8",
                "total": "96",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "1",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "0.02",
                "isrecommand": "0",
                "marketprice": "0.00",
                "hasOption": 0,
                "createtime": "2018-02-07 17:39:09",
                "status": "1",
                "displayorder": "100",
                "category": {
                    "name": "香菜测试",
                    "id": "1258"
                },
                "childCategory": null,
                "brand": {
                    "name": "品牌名称",
                    "id": "39"
                }
            },
            {
                "id": "124",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/ad4d6466517385f3.jpg",
                    "id": "163"
                },
                "beid": "53",
                "title": "女王犬专用蓬松塑形香波",
                "desc": "让您的爱犬秀出女神范，带它出门，回头率100%哦",
                "content": null,
                "sales": "22",
                "total": "99",
                "isSendFree": "1",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "1",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "5.00",
                "isrecommand": "1",
                "marketprice": "90.00",
                "hasOption": 1,
                "createtime": "2017-06-25 23:25:01",
                "status": "1",
                "displayorder": "30",
                "category": {
                    "name": "狗狗美容",
                    "id": "46"
                },
                "childCategory": {
                    "name": "乘云小程序",
                    "id": "1204"
                },
                "brand": null
            },
            {
                "id": "85",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/48ac140518b9b531.png",
                    "id": "36"
                },
                "beid": "53",
                "title": "婴儿期狗宝宝专配奶粉，口味醇厚5454545456454321321321",
                "desc": "让您的爱玩萌呆了！！！",
                "content": null,
                "sales": "25",
                "total": "0",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "20.00",
                "isrecommand": "1",
                "marketprice": "300.00",
                "hasOption": 1,
                "createtime": "2017-06-13 11:11:51",
                "status": "1",
                "displayorder": "15",
                "category": {
                    "name": "宠物玩具",
                    "id": "36"
                },
                "childCategory": {
                    "name": "玩具玩具我爱你",
                    "id": "1211"
                },
                "brand": null
            },
            {
                "id": "84",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/48ac140518b9b531.png",
                    "id": "36"
                },
                "beid": "53",
                "title": "恋爱中的狗狗，都要吃有爱的狗粮",
                "desc": "专为恋爱中的狗狗设计配方，让狗狗的恋爱更甜蜜~",
                "content": null,
                "sales": "96",
                "total": "123",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "1",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "0.01",
                "isrecommand": "0",
                "marketprice": "300.00",
                "hasOption": 0,
                "createtime": "2017-06-13 11:09:15",
                "status": "1",
                "displayorder": "14",
                "category": {
                    "name": "国产狗粮",
                    "id": "34"
                },
                "childCategory": null,
                "brand": {
                    "name": "品牌名称123",
                    "id": "38"
                }
            },
            {
                "id": "90",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/cd7edeb1df4f9008.png",
                    "id": "37"
                },
                "beid": "53",
                "title": "多口味曲奇，狗狗根本停不下来",
                "desc": "让您的爱玩萌呆了！！！",
                "content": null,
                "sales": "52",
                "total": "160",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "1",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "0.01",
                "isrecommand": "0",
                "marketprice": "300.00",
                "hasOption": 1,
                "createtime": "2017-06-13 11:14:07",
                "status": "1",
                "displayorder": "12",
                "category": {
                    "name": "狗狗零食",
                    "id": "37"
                },
                "childCategory": null,
                "brand": null
            },
            {
                "id": "131",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/cfb3b4575a37c687.png",
                    "id": "48"
                },
                "beid": "53",
                "title": "狗狗红黄绿三餐食包，荤素搭配，营养均衡",
                "desc": "早餐吃红袋有精神，中餐吃黄袋体力棒、晚上吃绿袋睡得香！",
                "content": null,
                "sales": "0",
                "total": "999",
                "isSendFree": "0",
                "istime": "1",
                "is_groupbuy": "0",
                "is_bargain": "0",
                "timestart": "1515828234",
                "timeend": "1562733238",
                "timestatus": 3,
                "productprice": "122.00",
                "isrecommand": "1",
                "marketprice": "134.00",
                "hasOption": 1,
                "createtime": "2017-06-25 23:50:34",
                "status": "1",
                "displayorder": "10",
                "category": {
                    "name": "狗狗零食",
                    "id": "37"
                },
                "childCategory": null,
                "brand": {
                    "name": "品牌名称123",
                    "id": "38"
                }
            },
            {
                "id": "132",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/c98e94ec5c7a9b71.png",
                    "id": "47"
                },
                "beid": "53",
                "title": "玫瑰香型，72小时全效留香",
                "desc": "",
                "content": null,
                "sales": "9",
                "total": "99",
                "isSendFree": "1",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "1",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "10.00",
                "isrecommand": "1",
                "marketprice": "99.00",
                "hasOption": 0,
                "createtime": "2017-06-26 00:02:22",
                "status": "1",
                "displayorder": "10",
                "category": {
                    "name": "狗狗美容",
                    "id": "46"
                },
                "childCategory": null,
                "brand": {
                    "name": "品牌名称123",
                    "id": "38"
                }
            },
            {
                "id": "87",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/a1c1c90183d2459a.png",
                    "id": "38"
                },
                "beid": "53",
                "title": "爱它就给它吃最好的三文鱼",
                "desc": "让您的爱玩萌呆了！！！",
                "content": null,
                "sales": "361",
                "total": "-2",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "2.00",
                "isrecommand": "1",
                "marketprice": "300.00",
                "hasOption": 1,
                "createtime": "2017-06-13 11:12:53",
                "status": "2",
                "displayorder": "9",
                "category": {
                    "name": "进口大狗粮",
                    "id": "35"
                },
                "childCategory": null,
                "brand": {
                    "name": "李宁",
                    "id": "3"
                }
            },
            {
                "id": "135",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/96cb23433e59a095.png",
                    "id": "172"
                },
                "beid": "53",
                "title": "GO! 健康无限系列 无谷鸡火鳟肉狗罐头",
                "desc": "",
                "content": null,
                "sales": "31",
                "total": "99",
                "isSendFree": "1",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "1",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "2.00",
                "isrecommand": "1",
                "marketprice": "578.00",
                "hasOption": 0,
                "createtime": "2017-06-26 00:51:42",
                "status": "1",
                "displayorder": "9",
                "category": {
                    "name": "进口大狗粮",
                    "id": "35"
                },
                "childCategory": null,
                "brand": null
            },
            {
                "id": "86",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/45ec482eb06dad88.jpg",
                    "id": "148"
                },
                "beid": "53",
                "title": "狗狗的重口味绳索小玩具,香菜啊香菜啊香菜啊香香菜啊香菜啊香菜啊香菜啊",
                "desc": "让您的爱犬越玩越萌呆了！！！",
                "content": null,
                "sales": "2423",
                "total": "1",
                "isSendFree": "1",
                "istime": "0",
                "is_groupbuy": "0",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "200.00",
                "isrecommand": "1",
                "marketprice": "300.00",
                "hasOption": 0,
                "createtime": "2017-06-13 11:12:19",
                "status": "2",
                "displayorder": "8",
                "category": {
                    "name": "宠物玩具",
                    "id": "36"
                },
                "childCategory": null,
                "brand": {
                    "name": "李宁",
                    "id": "3"
                }
            }
        ],
        "total": "35"
    }
}
```



