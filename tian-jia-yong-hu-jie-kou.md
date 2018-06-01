## 1. 接口描述

调用该接口可以直接创建一个用户 /admin/agent/addUser

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| username | String | 是 | 用户名（4~32位） |
| password | String | 是 | 添加用户的密码 |
| mobile | String | 是 | 用户手机号 |

## 3. 返回数据

```json
{
    "code": 0,
    "msg": "添加成功",
    "data": []
}
```



