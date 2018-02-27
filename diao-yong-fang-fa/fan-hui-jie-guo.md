# 返回结果

## 1. 正确返回结果

```json
{
    "code": 0,
    "msg": "获取商品列表数据成功",
    "data": {
        "data": [
            {
                "id": "2562",
                "thumb": {
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",
                    "id": "15920"
                },
                "beid": "53",
                "title": "香菜测试拼团",
                "desc": "",
                "content": null,
                "sales": "8",
                "total": "96",
                "isSendFree": "0",
                "istime": "0",
                "is_groupbuy": "1",
                "is_bargain": "0",
                "timestart": "0",
                "timeend": "0",
                "timestatus": 0,
                "productprice": "0.01",
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
            }
        ],
        "total": "1"
    }
}
```

* code 表示请求的返回码，对于正确返回结果，code必定大于或等于0。
* msg 表示请求成功的提示。
* data 表示请求成功之后的结果。

## 2. 错误返回结果

```json
{
    "code": -2,
    "msg": "获取失败",
    "data": []
}
```

* code 表示请求的返回码，对于错误返回结果，code必定小于0。

* msg 表示请求错误的提示。

* data 必定为空。



