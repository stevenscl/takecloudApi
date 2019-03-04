# 编辑商品分类

## 1.接口描述

本接口（admin/category/editCategory）用于编辑商品分类。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| cid | Integer | 是 | 分类的ID |
| name | String | 否 | 分类的名字 |
| enable | Integer | 否 | 是否有效 |
| isrecommand | Integer | 否 | 是否推荐到首页\(0否1是\) |
| thumb\_id | Integer | 否 | 类别封面的Id |
| displayorder | Integer | 否 | 排序 |
| deleted | Integer | 否 | 是否删除 |
| detail\_image | String | 否 | 详情图片 |
| phone | Integer | 否 | 分店电话 |
| address | String | 否 | 地址 |
| lnglat | String | 否 | 经纬度 |
| services | String | 否 | 服务列表 |
| detail | String | 否 | 分店详细描述 |
| area | String | 否 | 地区 |
| parentid | Integer | 否 | 上级分类ID,0为一级分类 |

## 3.输出参数

详见输出示例

## 4.错误返回

详见错误描述

## 5.示例

### 输入

### 输出

```json
{
"code": 2,
"msg": "修改分类成功",
"data": []
}
```



