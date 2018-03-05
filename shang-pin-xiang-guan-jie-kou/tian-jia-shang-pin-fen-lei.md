# 添加商品分类

## 1.接口描述

##### 本接口（ admin/category/add）用于添加小程序的电商商品分类。

## 2.输入参数

| 参数名称 | 类型 | 是否必填 | 描述 |
| :--- | :--- | :--- | :--- |
| name | String | 是 | 分类的名称 |
| enable | Integer | 是 | 是否有效 |
| beid | Integer | 是 | 自己店铺的id |
| isrecommand | Integer | 是 | 是否推荐到首页\(0否1是\) |
| thumb\_id | Integer | 是 | 类别封面Id\[参考上传图片\] |
| displayorder | Integer | 是 | 排序 |
| categoryType | Integer | 是 | 1 商品分类 2 菜品分类 3 内容分类 |
| parentid | Integer | 否 | 上级分类ID.0为第一级 |

## 3.输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| id | Integer | 添加分类的ID |

## 4.错误返回

详见错误描述

# 5.示例

### 输入

```json
https://weapp.takecloud.cn/admin/category/add?beid=64&name=%E9%A6%99%E8%95%89%E7%9A%84%E5%88%86%E7%B1%BB&enable=1&isrecommand=0&thumb_id=222&displayorder=5&categoryType=1&parentid=0&<公共请求参数>
```

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



