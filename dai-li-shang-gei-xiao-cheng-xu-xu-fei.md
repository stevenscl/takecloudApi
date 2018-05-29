## 1.接口描述

调用该接口创建一个小程序 /admin/agent/recharge

## 2. 输入参数

|  | 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
|  | token | String | 是 | 登录获取的token凭证 |
|  | name | String | 是 | 创建的小程序名称 |
| shopPeriod | Number/String | 是 | 开通时长，单位为月，如果为免费试用版本传 'free |  |

## 3. 返回数据

```json
{
    "code": 2,
    "msg": "创建成功",
    "data": [
        "beid":1111        # 创建的小程序ID
    ]
}
```



