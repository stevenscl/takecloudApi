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
        "pcate": "1258",    // 一级分类Id
        "ccate": "0",    // 二级分类Id，如无二级分类则为 0
        "title": "香菜测试拼团",    // 商品名称
        "desc": "",    // 商品描述
        "sales": "8",    // 商品销量
        "total": "96",    // 商品库存总量
        "status": "1",    // 商品状态 0 待上架 1 已上架 2 已下架 
        "totalcnf": "1",    // 库存减扣方式 0 拍下减库存 1 付款减库存 2 永久不减
        "issendfree": "0",    // 是否包邮
        "express_list": [    // 不包邮时的快递列表（如小程序开启了高级快递模板，则这里的快递列表失效）
            {
                "name": "顺丰快递",    // 快递名称
                "code": "shunfeng",    // 快递代码
                "price": "12",    // 快递价格
            }
        ],
        "productprice": "0.02",    // 商品销售价格
        "marketprice": "0.00",    // 商品市场价格
        "weight": "0.00",    // 商品重量
        "hasoption": 1,    // 商品是否有多规格
        "isrecommand": 0,    // 是否为推荐商品（老版本系统推荐到首页的设置）
        "recommand_title": "",    // 推荐标题
        "recommand_thumb_id": "0",    // 推荐图Id
        "recommand_thumb_url": "",    // 推荐图URL
        "displayorder": 100,    // 显示排序
        "option_desc": "哈哈哈哈，哈哈哈\n阿斯顿发生\n阿斯蒂芬\n阿斯蒂芬",    // 商品规格描述
        "istime": "0",    // 是否是限时秒杀商品
        "timestart": "0",    // 限时秒杀开始时间
        "timeend": "0",    // 限时秒杀结束时间
        "brand_id": "39",    // 品牌Id
        "isGroupBuy": "0",    // 是否是拼团商品
        "effectiveTime": "1",    // 成团有效时间
        "groupbuyPrice": "0.01",    // 拼团价格
        "limitNum": "1",    // 拼团砍价时限制购买的数量
        "is_bargain": "1",    // 是否是砍价商品
        "bargain_time": "1",    // 砍价的持续时间
        "bargain_price": "0.01",    // 砍价的最终价格
        "specs": {    // 商品多规格，如不是多规格商品则为NULL
            "types": [    // 规格列表
                {
                    "title": "包装",  // 规格名称  
                    "id": "129",    // 规格Id
                    "items": [    // 规格项列表
                        {
                            "id": "240",    // 规格项Id
                            "title": "大"    // 规格项名称
                        },
                        {
                            "id": "1614",
                            "title": "小"
                        }
                    ]
                },
                {
                    "title": "颜色",
                    "id": "474",
                    "items": [
                        {
                            "id": "1615",
                            "title": "红"
                        },
                        {
                            "id": "1616",
                            "title": "绿"
                        }
                    ]
                }
            ],
            "options": [    // 由各个规格项组成的可供购买选择的规格选项（规格项的笛卡尔积）
                {
                    "id": "2996",    // 选项Id
                    "title": "大+红",    // 选项标题用+分隔
                    "option_thumb_url": "",    // 该规格选项商品的图片URL
                    "option_thumb_id": null,    // 该规格选项商品的图片Id
                    "productprice": "10.00",    // 该规格选项的商品销售价格
                    "marketprice": "100.00",    // 该规格选项的商品市场价格
                    "stock": "1",
                    "weight": "1.00",    // 该规格选项的商品重量
                    "specs": "240_1615",    // 规格项Id组合，用_分隔开
                    "skucode": null,
                    "enable": "1"    // 是否有效（软删除）
                },
                {
                    "id": "2997",
                    "title": "大+绿",
                    "option_thumb_url": "",
                    "option_thumb_id": null,
                    "productprice": "10.00",
                    "marketprice": "100.00",
                    "stock": "1",
                    "weight": "1.00",
                    "specs": "240_1616",
                    "skucode": null,
                    "enable": "1"
                },
                {
                    "id": "2998",
                    "title": "小+红",
                    "option_thumb_url": "",
                    "option_thumb_id": null,
                    "productprice": "10.00",
                    "marketprice": "100.00",
                    "stock": "1",
                    "weight": "1.00",
                    "specs": "1614_1615",
                    "skucode": null,
                    "enable": "1"
                },
                {
                    "id": "2999",
                    "title": "小+绿",
                    "option_thumb_url": "",
                    "option_thumb_id": null,
                    "productprice": "10.00",
                    "marketprice": "100.00",
                    "stock": "1",
                    "weight": "1.00",
                    "specs": "1614_1616",
                    "skucode": null,
                    "enable": "1"
                }
            ]
        }
    }
}
```



