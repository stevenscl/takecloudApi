# 查看商品详情

## 1. 接口描述

本接口（admin/goods/detail）用于获取商品的详细信息。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| goodsId | Integer | 是 | 商品Id |

## 3. 输出参数

详见输出示例。

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
        "id": "2562",    // 商品Id
        "goods_banner": [    // 商品在小程序内的轮播图列表
            {
                "id": "15920",
                "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",    // 图片地址
                "isThumb": true    // 是否是轮播封面图
            }
        ],
        "goods_detail_pic": [    // 商品在小程序中的详情图列表
            {
                "id": "39",
                "url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/1aa169f8feeb06c3.jpg"    // 图片地址
            }
        ],
        "beid": "53",    // 小程序Id
        "goodssn": "G531517996292",    // 商品编号
        "pcate": "1258",    // 
        "ccate": "0",    // 
        "title": "香菜测试拼团",    // 商品名称
        "desc": "",    // 商品描述
        "sales": "8",    // 商品销量
        "total": "96",    // 商品总量
        "status": "1",    // 商品状态 0 待上架 1 已上架 2 已下架 
        "totalcnf": "1",
        "credit": "0",    // 商品积分
        "issendfree": "0",    // 是否包邮
        "express_list": [    // 包邮为空数组，不包邮的快递列表
            {
                "name": "顺丰快递",    // 快递名称
                "code": "shunfeng",    // 快递代码
                "price": "12",    // 快递价格
                "items": [    // 
                    {
                        "beid": "53",
                        "id": "4",
                        "code": "shunfeng",
                        "name": "顺丰快递",
                        "price": "12",
                        "enabled": "1",
                        "displayorder": "3",
                        "disabled": false
                    }
                ]
            }
        ],
        "productprice": "0.02",    // 商品销售价格
        "marketprice": "0.00",    // 商品市场价格
        "weight": "0.00",    // 商品重量
        "hasoption": 1,    // 商品是否有多规格
        "isrecommand": 0,    // 是否为推荐商品
        "recommand_title": "",    // 推荐标题
        "recommand_thumb_id": "0",    // 推荐图Id
        "recommand_thumb_url": "",    // 推荐图URL
        "superscript": 0,    // 
        "displayorder": 100,    // 显示排序
        "option_desc": "哈哈哈哈，哈哈哈\n阿斯顿发生\n阿斯蒂芬\n阿斯蒂芬",    // 商品规格描述
        "istime": "0",    // 是否是限时秒杀商品
        "timestart": "0",    // 限时秒杀开始时间
        "timeend": "0",    // 限时秒杀结束时间
        "brand_id": "39",    // 品牌Id
        "isGroupBuy": "0",    // 是否是拼团商品
        "effectiveTime": "1",    
        "groupbuyPrice": "0.01",    // 拼团价格
        "limitNum": "1",    
        "is_bargain": "1",    // 是否是砍价商品
        "bargain_time": "1",    // 
        "bargain_price": "0.01",
        "specs": {    // 商品多规格，如不是多规格商品
            "types": [
                {
                    "title": "包装",
                    "id": "129",
                    "items": [
                        {
                            "id": "240",
                            "title": "黄、蓝"
                        }
                    ]
                }
            ],
            "options": [
                {
                    "id": "2977",
                    "title": "黄、蓝",
                    "option_thumb_url": "",
                    "option_thumb_id": null,
                    "thumb": "",
                    "productprice": "0.01",
                    "marketprice": "10.00",
                    "costprice": "0.00",
                    "stock": "10",
                    "weight": "10.00",
                    "sku": "",
                    "specs": "240",
                    "skucode": null,
                    "enable": "1"
                }
            ]
        },
        "content": "null"
    }
}
```



