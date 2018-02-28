# 查看商品多级分类

## 1. 接口描述

此接口（admin/category/getCategoryWithSons）用于获取商品的多级分类。

## 2. 输入参数

本接口无接口请求参数。

## 3. 输出参数

返回多级分类列表

## 4. 错误返回

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/category/getCategoryWithSons?<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取类别数据成功",
    "data": [
        {
            "beid": "53",
            "id": "35",
            "name": "进口大狗粮",
            "thumb_id": "33",
            "thumb_url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/d3249c451e71f572.png",
            "parentid": "0",
            "displayorder": "6",
            "deleted": "0",    // 是否被删除
            "enabled": "1",    // 是否有效
            "create_time": "2017-06-13 10:58:54",    // 分类创建时间
            "sons": [    // 二级分类 如无二级分类则为 空数组
                {
                    "is_system": "0",
                    "beid": "53",
                    "id": "1206",
                    "category_type": "0",
                    "name": "一起愉快吃货",
                    "thumb": "",
                    "thumb_id": "48",
                    "thumb_url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/cfb3b4575a37c687.png",
                    "detail_image": null,
                    "parentid": "35",
                    "isrecommand": "0",
                    "recommand_type": "0",
                    "description": "",
                    "displayorder": "3",
                    "area": null,
                    "address": null,
                    "lnglat": null,
                    "services": null,
                    "detail": null,
                    "phone": null,
                    "deleted": "0",
                    "enabled": "1",
                    "create_time": "2017-12-22 10:10:25"
                },
                ...
            ]
        },
        ...
    ]
}
```



