## 1.接口描述

调用该接口获取小程序的管理URL（免登陆） /admin/agent/getShopManageUrl

 

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| beid | String | 是 | 小程序的ID |
| mobile | String | 是 | 小程序管理员的手机号 |

## 3. 返回数据

```json
{
    "code": 0,
    "msg": "获小程序管理URL成功",
    "data": {
        "url": "http://dev.takecloud.cn/open/admin/index/agent/10?token=8326c703da5b2968f905995d510680ec&beid=906"
    }
}
```



