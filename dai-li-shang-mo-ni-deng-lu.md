# 查看订单列表

## 1. 接口描述

此接口（admin/user/login）用于代理商用户账号的登录，获取到token。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| mobile | String | 是 | 代理商的手机号 |
| password | String | 是 | 代理商的密码 |

## 3. 输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| orders | Array | 订单列表 |
| total | String | 订单总数 |

## 4. 错误返回

详见错误描述。

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/order/orderList?pageIndex=1
&pageSize=10
&<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取订单信息成功",
    "data": {
        "orders": [
            {
                "id": "2674",    // 订单Id
                "ordersn": "C227132949919372",    // 订单编号
                "beid": "53",    // 小程序Id
                "price": "0.01",    // 订单总价
                "status": "1",    // 订单状态 详见 附录 > 各类型小程序订单状态
                "paytype": "0",    // 支付方式 0 微信支付 1 支付宝支付 2 线下支付
                "paytypename": "微信支付",    // 支付方式名称
                "remark": "",    // 订单用户备注
                "addressid": "585",    // 用户地址信息Id
                "dispatch_name": "圆通速递-订单满包邮",    // 下单用户选择快递名称
                "dispatchprice": "0.00",    // 下单用户选择快递价格
                "createtime": "2018-02-27 14:34:55",    // 订单创建时间
                "address_address": "剑川路951号零号湾科技大楼",    // 收货详细地址
                "address_area": "闵行区",    // 收货地址，区级
                "address_city": "上海市",    // 收货地址，市级
                "address_province": "上海市",    // 收货地址，省级
                "address_realname": "帅哥",    // 收货人名称
                "address_mobile": "11466757741",    // 收货人联系方式
                "openid": "onzUY0Y1GBD6KaYSzKwr7tlQBv7s",    // 下单微信用户openId
                "order_type": "1",    // 订单类型 1 商城订单 2 店内点单订单 3 外卖订单 4 流水订单 5 酒店订单
                "desk_num": "0",    // 如果是店内点单订单，表示桌号，否则为 0
                "statusName": "待发货",    // 订单状态名称
                "nickname": "Kingslayer"    // 下单微信用户昵称
            },
            ...
        ],
        "total": "978"
    }
}
```



