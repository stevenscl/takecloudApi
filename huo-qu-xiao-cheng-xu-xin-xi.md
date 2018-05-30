## 1.接口描述

调用该接口创建一个小程序 /admin/agent/getShopInfo

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| token | String | 是 | 登录获取的token凭证 |
| beid | String | 是 | 小程序的ID |

## 3. 返回数据

```json
{
    "code": 0,
    "msg": "获取小程序信息成功",
    "data": {
        "id": "906",                    # 小程序ID
        "shop_name": "我的测试小程序",     # 小程序名称     
        "industry": "",
        "tag": "",
        "admin_mobile": "18502115234",    # 管理员手机号
        "template_id": "0",                
        "new_tpl_id": "528",            # 视觉引擎小的模板ID
        "begin_time": "1527575761",    # 有效期开始时间
        "end_time": "1535524561",        # 有效期结束时间
        "price": "240",                # 小程序的价格
        "create_time": "1527575761",    # 创建时间
        "enable": "1",                # 是否运营中
        "deleted": "0",              # 是否删除
        "agent_id": "10",            # 创建该小程序的代理商ID
        "type": "3",                 # 小程序的版本，见获取小程序价格 
        "head_shop": "0",            # 如果是多门店版本，平台或者总店的ID
        "sort": "0",    
        "version": "1",                # 1 视觉引擎 0 非视觉引擎
        "purchase_channel": "0"
    }
}
```



