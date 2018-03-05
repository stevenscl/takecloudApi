## 1. 接口描述

调用该接口可以校验当前用户是否存在 /admin/agent/checkUserExist

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| mobile | String | 是 | 用户手机号 |

## 3. 返回数据

```json
{
    "code": 0,
    "msg": "用户校验成功",
    "data": {
        "userExist": 1
    }
}
```



