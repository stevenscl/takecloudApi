# 代理商登录

## 1. 接口描述

此接口（admin/user/login）用于代理商用户账号的登录，获取到token。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| mobile | String | 是 | 代理商的手机号 |
| password | String | 是 | 代理商的密码 |

## 3.输出实例

```json
{
    "code": 0,
    "msg": "获取订单信息成功",
    "data": {
        "uid":123,    // 当前登录的用户ID
        "username": "steven",    // 当前代理商的用户名
        "mobile":"18502115000"    // 当前代理商的手机号
        "token":"a4f48047debbc2dcd768cc925fc9644c"    // 登录成功的token
    }
}
```

注意

1、登录之后的token，30天有效，处理的时候，可以本地缓存token，失效之后重新调用登录接口获取

2、token会作为后续接口鉴权使用的凭证

