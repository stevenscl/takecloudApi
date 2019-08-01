# 查看用户列表

## 1. 接口描述

本接口（admin/member/memberlist）用于获取小程序的用户列表。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| plat | String | 否 | 用户来源（1微信2支付宝3百度     默认1\#2\#3） |

## 3.输出参数

详见输出示例

## 4. 错误返回

详见错误描述。

## 5. 示例

### 输出

```json
{
    "code": 0,
    "msg": "获取用户列表成功",
    "data": {
        "members": [
            {
                "id": "1714544",
                "openid": "op4oN0RGTnLgW-2zag4FLVMcayJU",    //用户的openID
                "credit": "1",                               //总积分
                "nickname": "Ycybro",                        //昵称
                "createtime": "2019-07-26 10:28:52",
                "avatar": "https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLDkmste3LxfUyO7lX8rNV6iafB2E9LxM1ib605DtHwLbS2wsTRB8Yyh5xw8CDU9SpyNOOVHTKccL9WQ/132",
                "status": "1",
                "realname": "",
                "mobile": "",                               
                "gender": "0",                               //性别  0未知 1男 2女
                "birthday": "0000-00-00",
                "plat": "1",                                 //来源  1支付宝 2百度  0微信
                "wechat": null,
                "open_vip_card": "0",                        //是否开启会员卡  1开启 0未开启
                "card_number": "",                           //会员卡号
                "card_remaining": "0.00",                    //会员金额
                "addresses": [                               //地址
                    {
                        "beid": "64",
                        "id": "221812",
                        "openid": "op4oN0RGTnLgW-2zag4FLVMcayJU",
                        "uid": "1714544",
                        "realname": "陈天明",
                        "mobile": "18362943571",
                        "province": "",
                        "city": "",
                        "area": "",
                        "address": "",
                        "lnglat": "-1",
                        "post_code": "0",
                        "isdefault": "0",
                        "deleted": "0"
                    },
                    {
                        "beid": "64",
                        "id": "221842",
                        "openid": "op4oN0RGTnLgW-2zag4FLVMcayJU",
                        "uid": "1714544",
                        "realname": "-",
                        "mobile": "-",
                        "province": "",
                        "city": "",
                        "area": "",
                        "address": "",
                        "lnglat": "-1",
                        "post_code": "0",
                        "isdefault": "0",
                        "deleted": "0"
                    }
                ],
                "vip_level": "4"
            }, 

        ],
        "total": "1680"
    }
}
```



