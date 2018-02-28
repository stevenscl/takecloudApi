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
            "beid": "53",    // 小程序Id
            "id": "35",    // 分类Id
            "name": "进口大狗粮",    // 分类名称
            "thumb_id": "33",    // 分类的图片Id
            "thumb_url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/d3249c451e71f572.png",    // 分类的图片URL
            "parentid": "0",    // 如果当前分类是一级分类，则为 0 ，否则为父级分类Id
            "displayorder": "6",    // 显示排序
            "deleted": "0",    // 是否显示在小程序分类列表内
            "enabled": "1",    // 是否有效（软删除）
            "create_time": "2017-06-13 10:58:54",    // 分类创建时间
            "sons": [    // 二级分类 如无二级分类则为空数组
                {
                    "beid": "53",
                    "id": "1206",
                    "name": "一起愉快吃货",
                    "thumb_id": "48",
                    "thumb_url": "https://weapp-1253522117.image.myqcloud.com//image/20170607/cfb3b4575a37c687.png",
                    "parentid": "35",
                    "displayorder": "3",
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



