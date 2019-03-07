# 编辑商品分类

## 1.接口描述

本接口（admin/category/editCategory）用于编辑商品分类。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| cid | Integer | 是 | 分类的ID |
| name | String | 否 | 分类的名字 |
| enabled | Integer | 否 | 是否有效 |
| isrecommand | Integer | 否 | 是否推荐到首页\(0否1是\) |
| thumb\_id | Integer | 否 | 类别封面的Id |
| displayorder | Integer | 否 | 排序 |
| categoryType | Integer | 否 | 类型\(1商品2菜品3内容\) |
| parentid | Integer | 否 | 上级分类ID,0为一级分类 |
| beid | Integer | 是 | 店铺id |

## 3.输出参数

详见输出示例

## 4.错误返回

详见错误描述

## 5.示例

### 输出

```json
{
"code": 2,
"msg": "修改分类成功",
"data": []
}
```



