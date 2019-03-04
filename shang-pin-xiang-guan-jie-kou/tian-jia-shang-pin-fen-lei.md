# 添加商品分类

## 1.接口描述

##### 本接口（ admin/category/add）用于获取小程序的商品列表。

## 2.输入参数

| 参数名称 | 类型 | 是否必填 | 描述 |
| :--- | :--- | :--- | :--- |
| name | String | 是 | 分类的名称 |
| enable | Integer | 是 | 是否有效 |
| isrecommand | Integer | 是 | 是否推荐到首页\(0否1是\) |
| thumb\_id | Integer | 是 | 类别封面 |
| displayorder | Integer | 是 | 排序 |
| detail\_image | String | 否 | 详情图片 |
| ategoryType | Integer | 否 | 万能版本 0 默认 1 商品分类 2 菜品分类 3 内容分类 |
| phone | Integer | 否 | 分店电话 |
| area | String | 否 | 地区 |
| address | String | 否 | 地址 |
| lnglat | String | 否 | 经纬度 |
| services | String | 否 | 服务列表 |
| detail | String | 否 | 分店详细描述 |
| parentid | Integer | 否 | 上级分类ID.0为第一级 |

## 3.输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| id | Integer | 添加分类的ID |

## 4.错误返回

详见错误描述

# 5.示例

### 输出

```json
{
"code": 2,
"msg": "类别添加成功",
"data": {
"id": "5"
}
}
```



