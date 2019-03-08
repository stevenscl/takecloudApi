# 查看快递列表

## 1.接口描述

本接口（admin/express/getShopExpress）用于获取快递列表。

## 2.输入参数

| 参数名称 | 类型 | 是否必传 | 描述 |
| :--- | :--- | :--- | :--- |
| beid | Integer | 是 | 店铺的ID |

## 3.输出参数

详见输出参数。

## 4.错误返回

详见错误描述。

## 5.示例

### 输出

```json
{
"code": 0,
"msg": "获取快递模板",
"data": [
{
"beid": "64",
"id": "141",
"code": "guotongkuaidi",
"name": "国通快递",
"price": "5",
"enabled": "1",
"displayorder": "0",
"support": 0          //物流信息查看是否支持(0否1是)
},
{
"beid": "64",
"id": "3997",
"code": "YTO",
"name": "圆通速递",
"price": "10",
"enabled": "1",
"displayorder": "0",
"support": "1"
}
]
}
```



