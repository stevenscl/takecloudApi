# 获取小程序列表

## 1. 接口描述

此接口（admin/agent/getShopList）用于获取当前代理商开通的所有的小程序列表。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| name | String | 否 | 小程序名称，可以模糊搜索 |
| adminMobile | String | 否 | 小程序的管理员手机号，可模糊搜索 |
| status | Array | 是 | status是个数组，1 使用中 2 已过期 3 运营关闭 |
| timeRange | Array | 否 | timeRange\[0\]为开始时间，timeRange\[1\]为结束时间 格式为unix时间戳 |

## 3.输出实例

```json
{
    "code": 0,
    "msg": "获取订单信息成功",
    "data": {
        "uid":123,    // 当前登录的用户ID
        "username": "skywod",    // 当前代理商的用户名
        "mobile":"18502115000"    // 当前代理商的手机号
        "token":"a4f48047debbc2dcd768cc925fc9644c"    // 登录成功的token
    }
}
```

注意

1、登录之后的token，30天有效，处理的时候，可以本地缓存token，失效之后重新调用登录接口获取

2、token会作为后续接口鉴权使用的凭证

