# 查看商品详情

## 1. 接口描述

本接口（admin/goods/detail）用于获取商品的详细信息。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| goodsId | Integer | 是 | 商品Id |

## 3. 输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
|  |  |  |

## 4. 错误返回

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/goods/detail?goodsId=2562
&<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取商品详情成功",
    "data": {
        "id": "2562",
        "goods_banner": [
            {
                "id": "15920",
                "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",
                "isThumb": true
            }
        ],
        "goods_detail_pic": [],
        "beid": "53",
        "goodssn": "G531517996292",
        "pcate": "1258",
        "ccate": "0",
        "title": "香菜测试拼团",
        "desc": "",
        "sales": "8",
        "total": "96",
        "status": "1",
        "totalcnf": "1",
        "credit": "0",
        "issendfree": "0",
        "express_list": [],
        "productprice": "0.02",
        "marketprice": "0.00",
        "weight": "0.00",
        "hasoption": 0,
        "isrecommand": 0,
        "recommand_title": "",
        "recommand_thumb_id": "0",
        "recommand_thumb_url": "",
        "superscript": 0,
        "displayorder": 100,
        "option_desc": "",
        "istime": "0",
        "timestart": "0",
        "timeend": "0",
        "brand_id": "39",
        "isGroupBuy": "0",
        "effectiveTime": "1",
        "groupbuyPrice": "0.01",
        "limitNum": "1",
        "is_bargain": "1",
        "bargain_time": "1",
        "bargain_price": "0.01",
        "specs": [],
        "content": "null"
    }
}
```



