# 查看订单详情

## 1. 接口描述

此接口（admin/order/detail）用于获取订单的详细信息。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| orderId | Integer | 是 | 订单Id |

## 3. 输出参数

详见输出示例。

## 4. 错误返回

详见错误描述。

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/order/detail?orderId=2674
&<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取订单详情数据成功",
    "data": {
        "admin_remark": "",    // 商家留言
        "id": "2674",    // 订单Id
        "beid": "53",    // 小程序Id
        "price": "0.01",    // 订单总价
        "credit": "0",    // 订单总积分
        "openid": "onzUY0Y1GBD6KaYSzKwr7tlQBv7s",    // 下单微信用户openId
        "ordersn": "C227132949919372",    // 订单编号
        "dispatchexpress": "YTO",    // 下单用户选择快递标识
        "dispatchprice": "0.00",    // 下单用户选择快递价格
        "dispatch_name": "圆通速递-订单满包邮",    // 下单用户选择快递名称
        "express_sn": "",    // 商家发货快递编号
        "express_code": "",    // 商家发货快递标识
        "express_name": "",    // 商家发货快递名称
        "address_address": "剑川路951号零号湾科技大楼",    // 收货详细地址
        "address_area": "闵行区",   // 收货地址，区级 
        "address_city": "上海市",    // 收货地址，市级
        "address_province": "上海市",    // 收货地址，省级
        "address_realname": "帅哥",    // 收货人名称
        "paytype": "0",    // 支付方式 0 微信支付 1 支付宝支付 2 线下支付
        "paytypename": "微信支付",    // 支付方式名称
        "address_mobile": "11466757741",    // 收货人联系方式
        "status": "1",    // 订单状态 详见 附录 > 各类型小程序订单状态
        "createtime": "2018-02-27 14:34:55",    // 订单创建时间
        "coupon_id": "0",    // 优惠券Id
        "coupon_money": "0",    // 优惠金额
        "desk_num": "0",    // 如果是店内点单订单，表示桌号，否则为 0
        "order_type": "1",    // 订单类型 1 商城订单 2 店内点单订单 3 外卖订单 4 流水订单 5 酒店订单
        "remark": "",    // 订单用户备注
        "distributor_id": "0",    // 订单分销者Id
        "source": "1",    // 订单来源 0 普通订单 1 拼团订单 2 砍价订单
        "refund": "0.00",    // 订单退款才有值，应退金额
        "been_refund": "0.00",    // 订单退款才有值，实退金额
        "goods": [    // 订单内商品列表
            {
                "orderid": "2674",    // 订单Id
                "goodssn": "G531497323378",    // 商品编号
                "thumb": "https://weapp-1253522117.image.myqcloud.com//image/20170607/48ac140518b9b531.png",    // 商品封面图
                "goodsid": "84",    // 商品Id
                "status": "0",    // 商品状态 0 待上架 1 已上架 2 已下架 
                "title": "恋爱中的狗狗，都要吃有爱的狗粮",    // 商品名称
                "price": "0.01",    // 商品价格
                "total": "1",    // 商品购买数量
                "optionid": "0",    // 商品规格选项Id 如是单规格商品，为 0
                "optionname": null,    // 商品规格选项名称，如是单规格商品，则为 NULL
                "iscomment": "0",    // 是否评论
                "brandName": "品牌名称123"    // 商品所属品牌名称，如没有，则为 NULL
            }
        ],
        "redPack": {    // 小程序开启了红包功能才有，否则为 NULL
            "id": "120",    // 红包Id
            "beid": "53",    // 小程序Id
            "uid": "10283",    // 下单用户Id
            "order_id": "2674",    // 订单Id
            "last_num": "2",     // 红包个数   
            "receive_list": "[{\"num\":1,\"coupon_id\":\"279\",\"user_id\":\"0\"},{\"num\":2,\"coupon_id\":\"279\",\"user_id\":\"0\"}]",    // 预设好的红包，num是序号，红包实则为优惠券，coupon_id为优惠券Id，user_id为领取用户Id
            "createtime": "1519713295",    // 红包创建时间
            "enable": "1"    // 是否有效（软删除）
        },
        "hasRedPack": 1,    // 该订单是否有红包
        "statusName": "待发货",    // 订单状态名称
        "goodsTotalMoney": 0.01,    // 购买商品的总价
        "nickname": "Kingslayer"    // 下单微信用户昵称
    }
}
```



