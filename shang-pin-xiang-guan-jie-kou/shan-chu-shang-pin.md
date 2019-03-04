# 删除商品

## 1.接口描述

##### 本接口（admin/goods/delGoods）用于删除小程序的商品。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| goodsId | Integer | 是 | 商品的ID |

## 3.输出参数

详见输出示例

## 4.错误返回

详见错误描述.

## 5.示例

### 输入

```json
https://weapp.takecloud.cn/admin/goods/delGoods?goodsId=6
```

### 输出

```json
{
    "code": 2,
    "msg": "删除成功",
    "data": []
}
```



