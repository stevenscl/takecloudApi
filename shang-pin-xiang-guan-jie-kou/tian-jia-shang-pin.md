# 添加商品

## 1.接口描述

##### 本接口（admin/goods/saveGoods）用于添加 / 编辑小程序的电商商品。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| goodsid | Integer | 否 | \(如果是编辑商品的信息需要传\) |
| title | String | 是 | 商品名称 |
| goodssn | Integer | 是 | 商品唯一编号\[不能重复\] |
| pcate | Integer | 是 | 一级分类id |
| ccate | Integer | 否 | 二级分类 |
| marketprice | decimal\(10,2\) | 否 | 市场上的价格 |
| productprice | decimal\(10,2\) | 否 | 产品出售的价格 |
| weight | decimal\(10,2\) | 否 | 商品重量 |
| type | Integer | 否 | 详情展示方式\(0富文本1详情图\) |
| issendfree | Integer | 否 | 是否包邮\(0否1是\)\[不包邮的话要填写快递列表\] |
| express\_list | String | 否 | 快递列表\[快递信息的获取接口目前不支持\] |
| sales | Integer | 否 | 销量 |
| total | Integer | 是 | 商品总数 |
| totalcnf | Integer | 否 | 0 拍下立减库存 1 付款减库存 2 永不减库存 |
| credit | Integer | 否 | 积分 |
| hasoption | Integer | 否 | 是否有多规格\(0否1是\)\[多规格商品的话options和specs也要传\] |
| option\_desc | String | 否 | 规格描述 |
| options | String | 否 | 多规格参数详情\[specs也要一同填写\]\(格式\[{"title":"大","stock":"10","productprice":"20","marketprice":"30","weight":"6","sales":"800"},{"title":"小","stock":"10","productprice":"20","marketprice":"30","weight":"6","sales":"800"}\] |
| specs | String | 否 | 规格格式\[{"id":0,"name":"大小杯","specItem":\[{"id":0,"title":"大"},{"id":0,"title":"小"}\]}\] |
| description | Integer | 否 | 商品描述 |
| superscript | Integer | 否 | 角标 0 未设置 1 新品 2精品 3促销 4 热卖 |
| isrecommand | Integer | 否 | 是否推荐到首页\(1是0否\) |
| recommand\_title | String | 否 | 首页推荐的title |
| recommand\_thumb\_id | Integer | 否 | 首页推荐主图ID |
| isTime | Integer | 否 | 是否秒杀\(0否1是\) |
| timestart | Integer | 否 | 开始时间\(时间戳\) |
| timeend | Integer | 否 | 结束时间\(时间戳\) |
| is\_groupbuy | Integer | 否 | 是否是拼团 |
| effective\_time | Integer | 否 | 成团的有效时间 |
| groupbuy\_price | decimal\(10,2\) | 否 | 拼团价格 |
| limit\_num | Integer | 否 | 拼团限定人数 |
| is\_bargain | Integer | 否 | 是否是砍价\(0否1是\) |
| bargain\_time | Integer | 否 | 砍价时间 |
| bargain\_price | decimal\(10,2\) | 否 | 砍价价格 |
| sku | Integer | 否 | sku编码 |
| displayorder | Integer | 否 | 排序数字 |
| thumb\_id | Integer | 否 | 商品封面图ID |
| goods\_banner | String | 否 | 商品主图\(传参格式\[{"id":"1292269","url":"[https://weapp-1253522117.image.myqcloud.com//image/20190125/d871a3bde31a65df.png","cover":"https://weapp-1253522117.image.myqcloud.com//image/20190125/d871a3bde31a65df.png?imageView2/1/w/80/h/80","active":false,"isThumb":true}\](https://weapp-1253522117.image.myqcloud.com//image/20190125/d871a3bde31a65df.png","cover":"https://weapp-1253522117.image.myqcloud.com//image/20190125/d871a3bde31a65df.png?imageView2/1/w/80/h/80","active":false,"isThumb":true}\)\] |
| goods\_detail\_pic | String | 否 | 商品详情图\(格式同上\) |
| brand\_id | Integer | 否 | 品牌ID |
| goodsType | Integer | 是 | 商品类型\(1商品2菜品3内容\) |
| setting | String | 否 | 展示版底部栏设置 |
| tags | String | 否 | 商品标签 |
| has\_vip\_price | Integer | 否 | 是否有会员价\(0否1是\) |
| vip\_price | double  | 否 | 会员价 |
| is\_virtual\_goods | Integer | 否 | 是否虚拟商品 |

## 3.输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| goodsId | Integer | 商品的id |

## 4.错误返回

##### 详见错误描述

# 5.示例

## 输入\(示例部分参数\)

```json
https://weapp.takecloud.cn/admin/goods/saveGoods?beid=64&title=%E8%8B%B9%E6%9E%9C4%E5%8F%B7&goodssn=G8021551840904&pcate=57618&ccate=0&marketprice=200&productprice=600&weight=20&issendfree=1&express_list=&sales=800&total=68&totalcnf=2&hasoption=0&option_desc=%E5%9C%A3%E8%AF%9E%E8%8A%82&description=%E6%98%AF%E6%8F%8F%E8%BF%B0%E5%91%80&superscript=0&isrecommand=1&recommand_title=%E4%B8%BB%E5%9B%BE%E6%A0%87%E9%A2%98&recommand_thumb_id=222&isTime=0&timestart=0&timeend=0&is_groupbuy=0&is_bargain=0&effective_time=0&groupbuy_price=0&limit_num=0&bargain_time=0&bargain_price=0&sku=0&displayorder=2&thumb_id=276&goods_banner=&goods_detail_pic=&brand_id=0&goodsType=1&setting=&tags=&has_vip_price=0&vip_price=0&is_virtual_goods=0&AppId=tc_5c7f30c34a0eb&Nonce=56816&Timestamp=1551848233&Signature=GSYrXAo6v3vsugbtfWPZYH0OGOc%3D
```

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



