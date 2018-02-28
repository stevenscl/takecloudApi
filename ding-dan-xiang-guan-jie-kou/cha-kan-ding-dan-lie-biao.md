# 查看订单列表

## 1. 接口描述

此接口（admin/order/orderList）用于获取小程序订单列表。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| pageIndex | Integer | 否 | 分页参数：页号（默认为1） |
| pageSize | Integer | 否 | 分页参数：页号（默认为10） |

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
                "id": "2674",
                "ordersn": "C227132949919372",
                "beid": "53",
                "price": "0.01",
                "status": "1",
                "paytype": "0",
                "paytypename": "微信支付",
                "remark": "",
                "addressid": "585",
                "dispatch": "0",
                "dispatch_name": "圆通速递-订单满包邮",
                "dispatchprice": "0.00",
                "createtime": "2018-02-27 14:34:55",
                "address_address": "剑川路951号零号湾科技大楼",
                "address_area": "闵行区",
                "address_city": "上海市",
                "address_province": "上海市",
                "address_realname": "帅哥",
                "address_mobile": "11466757741",
                "openid": "onzUY0Y1GBD6KaYSzKwr7tlQBv7s",
                "order_type": "1",
                "desk_num": "0",
                "statusName": "待发货",
                "nickname": "Kingslayer"
            },
            ...
        ],
        "total": "978"
    }
}
```



