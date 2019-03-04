# 添加商品

## 1.接口描述

##### 本接口（admin/goods/saveGoods）用于添加小程序的电商商品。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| title | String | 是 | 商品名称 |
| goodssn | Integer | 是 | 商品唯一编号 |
| pcate | Integer | 是 | 一级分类id |
| ccate | Integer | 否 | 二级分类 |
| marketprice | decimal\(10,2\) | 否 | 市场上的价格 |
| productprice | decimal\(10,2\) | 否 | 产品出售的价格 |
| weight | decimal\(10,2\) | 否 | 商品重量 |
| type | Integer | 否 | 商品类型\(0为实体，1为虚拟\) |
| issendfree | Integer | 否 | 是否包邮\(0否1是\) |
| express\_list | String | 否 | 快递列表 |
| sales | Integer | 否 | 销量 |
| total | Integer | 否 | 商品总数 |
| totalcnf | Integer | 否 | 0 拍下立减库存 1 付款减库存 2 永不减库存 |
| credit | Integer | 否 | 积分 |
| hasoption | Integer | 否 | 是否有多规格\(0否1是\) |
| option\_desc | String | 否 | 多规格商品详情 |
| description | Integer | 否 | 商品描述 |
| superscript | Integer | 否 | 角标 0 未设置 1 新品 2精品 3促销 4 热卖 |
| isrecommand | Integer | 否 | 是否推荐到首页\(1是0否\) |
| recommand\_title | String | 否 | 首页推荐的title |
| recommand\_thumb\_id | Integer | 否 | 首页推荐主图ID |
| isTime | Integer | 否 | 是否是秒杀 |
| timestart | Integer | 否 | 开始时间\(时间戳\) |
| timeend | Integer | 否 | 结束时间 |
| is\_groupbuy | Integer | 否 | 是否是拼团 |
| is\_bargain | Integer | 否 | 是否是砍价 |
| effective\_time | Integer | 否 | 成团的有效时间 |
| groupbuy\_price | decimal\(10,2\) | 否 | 拼团价格 |
| limit\_num | Integer | 否 | 拼团限定人数 |
| is\_bargain | Integer | 否 | 是否是砍价 |
| bargain\_time | Integer | 否 | 砍价时间\(时间戳\) |
| bargain\_price | decimal\(10,2\) | 否 | 砍价价格 |
| content | String | 否 | 富文本内容 |
| sku | Integer | 否 | SKU编码 |
| displayorder | Integer | 否 | 排序 |
| thumb\_id | Integer | 否 | 商品封面图ID |
| goods\_banner | Integer | 否 | 商品主图 |
| goods\_detail\_pic | Integer | 否 | 商品详情图 |
| brand\_id | brand\_id | 否 | 品牌ID |
| goodsType | Integer | 否 | 商品类型0 默认 1 商品 2 菜品 3 内容 |
| setting | String | 否 | 展示版底部栏设置 |
| tags | String | 否 | 商品标签 |
| has\_vip\_price | Integer | 否 | 是否有会员价 |
| vip\_price | double | 否 | 会员价 |
| is\_virtual\_goods | Integer | 否 | 是否虚拟商品 |

## 3.输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| goodsId | Integer | 商品的id |

## 4.错误返回

##### 详见错误描述

# 5.示例

### 输出

```json
{
    "code": 2,
    "msg": "新增商品成功",
    "data": {
        "goodsId": "5"
    }
}
```



