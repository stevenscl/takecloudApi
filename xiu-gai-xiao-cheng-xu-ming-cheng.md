## 1.接口描述

调用该接口修改小程序的名称 /admin/agent/updateShopName

 

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| beid | String | 是 | 小程序的ID |
| shopName | String | 是 | 要修改的店铺的名称 |

## 3. 返回数据

```json
{
    "code": 0,
    "msg": "修改小程序名称成功",
    "data": []
}
```



