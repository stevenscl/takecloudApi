# 查看商品分类详情

## 1.接口描述

此接口（ admin/category/detail）用于获取商品分类详情。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| beid | Integer | 是 | 店铺ID |
| cid | Integer | 是 | 分类ID |
| categoryType | Integer | 是 | 1商品分类2菜品分类3内容分类 |

## 3.输出参数

详见输出示例。

## 4.错误返回

详见错误描述。

## 5.示例

### 输出

```json
{
"code": 0,
"msg": "获取分类详情成功",
"data": {
"is_system": "0",
"beid": "64",
"id": "59820",
"category_type": "1",   //1是商品
"name": "苹果的分类",  //分类名称
"thumb": "",
"thumb_id": "222",    //封面图片ID
"thumb_url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/8ae64f5a498bd55e.jpg",//封面图片URL
"detail_image": null,
"parentid": "0",  //父级分类id   0的话是一级分类     
"isrecommand": "0",
"recommand_type": "0",
"description": "",
"displayorder": "5",  //排序
"area": null,
"address": null,
"lnglat": null,
"services": null,
"detail": null,
"phone": null,
"deleted": "0",  //是否显示
"enabled": "1",  //是否有效
"create_time": "2019-03-06 13:30:51",
"src_id": "0"
}
}
```



