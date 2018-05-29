## 1.接口描述

调用该接口创建一个小程序 /admin/agent/recharge

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| name | String | 是 | 创建的小程序名称 |
| shopPeriod | Number | 是 | 续费时长，单位为月 |

## 3. 返回数据

```json
{
    "code": 2,
    "msg": "续费成功",
    "data": []
    
}
```



