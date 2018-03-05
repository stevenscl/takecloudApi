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
	"msg": "获取成功",
	"data": {
		"data": [{
			"id": "907",
			"shop_name": "手机壳壳",
			"industry": "",
			"tag": "",
			"admin_mobile": "13122255117",
			"template_id": "0",
			"new_tpl_id": "531",
			"begin_time": "1527735365",
			"end_time": "1559530565",
			"price": "960",
			"create_time": "1527735365",
			"enable": "1",
			"deleted": "0",
			"agent_id": "10",
			"type": "3",
			"head_shop": "0",
			"sort": "0",
			"version": "1",
			"purchase_channel": "0",
			"shopName": "手机壳壳",
			"adminMobile": "13122255117",
			"createTime": "1527735365",
			"beginTime": "1527735365",
			"endTime": "1559530565",
			"usedDays": 1,
			"status": 2
		},
		……
	}
}	
```



