# 查看订单详情

## 1. 接口描述

此接口（admin/order/detail）用于获取订单的详细信息。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| orderId | Integer | 是 | 订单Id |

## 3. 输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
|  |  |  |

## 4. 错误返回

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
        "admin_remark": "",
        "id": "2674",
        "beid": "53",
        "price": "0.01",
        "credit": "0",
        "openid": "onzUY0Y1GBD6KaYSzKwr7tlQBv7s",
        "ordersn": "C227132949919372",
        "dispatchexpress": "YTO",
        "dispatchprice": "0.00",
        "dispatch_name": "圆通速递-订单满包邮",
        "express_sn": "",
        "express_code": "",
        "express_name": "",
        "address_address": "剑川路951号零号湾科技大楼",
        "address_area": "闵行区",
        "address_city": "上海市",
        "address_province": "上海市",
        "address_realname": "帅哥",
        "paytype": "0",
        "paytypename": "微信支付",
        "address_mobile": "11466757741",
        "status": "1",
        "createtime": "2018-02-27 14:34:55",
        "coupon_id": "0",
        "coupon_money": "0",
        "desk_num": "0",
        "order_type": "1",
        "remark": "",
        "distributor_id": "0",
        "source": "1",
        "refund": "0.00",
        "been_refund": "0.00",
        "goods": [
            {
                "orderid": "2674",
                "goodssn": "G531497323378",
                "thumb": "https://weapp-1253522117.image.myqcloud.com//image/20170607/48ac140518b9b531.png",
                "goodsid": "84",
                "status": "0",
                "title": "恋爱中的狗狗，都要吃有爱的狗粮",
                "price": "0.01",
                "total": "1",
                "optionid": "0",
                "optionname": null,
                "iscomment": "0",
                "order_dates": null,
                "brandName": "品牌名称123"
            }
        ],
        "redPack": {
            "id": "120",
            "beid": "53",
            "uid": "10283",
            "order_id": "2674",
            "last_num": "2",
            "receive_list": "[{\"num\":1,\"coupon_id\":\"279\",\"user_id\":\"0\"},{\"num\":2,\"coupon_id\":\"279\",\"user_id\":\"0\"}]",
            "createtime": "1519713295",
            "enable": "1"
        },
        "hasRedPack": 1,
        "statusName": "待发货",
        "goodsTotalMoney": 0.01,
        "consume_code": false,
        "coupon_info": [],
        "distribution_user": false,
        "nickname": "Kingslayer"
    }
}
```



