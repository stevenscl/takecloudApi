# 查看商品列表

## 1. 接口描述

本接口（admin/goods/goodsList）用于获取小程序的商品列表。。

## 2. 输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| pageIndex | Integer | 否 | 分页参数：页号（默认为1） |
| pageSize | Integer | 否 | 分页参数：页长（默认为10） |
| status | String | 是 | 商品状态，可选状态有：**待上架、已上架、已下架**，如需筛选多个**请用\#分开**。例如：获取全部状态的商品  **待上架\#已上架\#已下架** |
| promote | String | 是 | 商品促销状态，可选促销状态有：**秒杀、拼团、砍价、无促销**，如需筛选多个**请用\#分开**。例如：获取全部促销状态的商品 **秒杀\#拼团\#砍价\#无促销** |
| cid | Integer | 否 | 一级分类Id，获取分类Id，参见 [查看商品多级分类 ](/shang-pin-xiang-guan-jie-kou/cha-kan-shang-pin-duo-ji-fen-lei.md)接口 |
| ccid | Integer | 否 | 二级分类Id，获取分类Id，参见[ 查看商品多级分类](/shang-pin-xiang-guan-jie-kou/cha-kan-shang-pin-duo-ji-fen-lei.md) 接口 |

## 3. 输出参数

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| data | Array | 商品列表 |
| total | String | 商品总数 |

## 4. 错误返回

详见错误描述。

## 5. 示例

### 输入

```
https://weapp.takecloud.cn/admin/goods/goodsList?pageIndex=1
&pageSize=10
&status=%E5%BE%85%E4%B8%8A%E6%9E%B6%23%E5%B7%B2%E4%B8%8A%E6%9E%B6%23%E5%B7%B2%E4%B8%8B%E6%9E%B6
&promote=%E7%A7%92%E6%9D%80%23%E6%8B%BC%E5%9B%A2%23%E7%A0%8D%E4%BB%B7%23%E6%97%A0%E4%BF%83%E9%94%80
&<公共请求参数>
```

### 输出

```json
{
    "code": 0,
    "msg": "获取商品列表数据成功",
    "data": {
        "data": [
            {
                "id": "2562",    // 商品Id
                "thumb": {    // 商品封面图
                    "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",    // 封面图URL
                    "id": "15920"
                },
                "beid": "53",    // 小程序Id
                "title": "香菜测试拼团",    // 商品名称
                "desc": "",    // 商品描述
                "sales": "8",    // 商品销量
                "total": "96",    // 商品总数
                "isSendFree": "0",    // 是否包邮
                "istime": "0",    // 是否是限时秒杀商品
                "is_groupbuy": "0",    // 是否是拼团商品
                "is_bargain": "1",    // 是否是砍价商品
                "timestart": "0",    // 限时秒杀开始时间
                "timeend": "0",    // 限时秒杀结束时间
                "productprice": "0.02",    // 商品销售价格
                "isrecommand": "0",    // 是否为推荐商品
                "marketprice": "0.00",    // 商品市场价格
                "hasOption": 0,    // 商品是否多规格
                "createtime": "2018-02-07 17:39:09",    // 商品创建时间
                "status": "1",    // 商品状态 0 待上架 1 已上架 2 已下架 
                "displayorder": "100",    // 商品显示排序
                "category": {    // 商品分类
                    "name": "香菜测试",    // 分类名称
                    "id": "1258"    // 分类Id
                },
                "childCategory": {    // 商品所属的二级分类，如没有则为 NULL
                    "name": "乘云小程序",    // 二级分类名称
                    "id": "1204"    // 二级分类Id
                },
                "brand": {    // 商品品牌 没有则为 null
                    "name": "品牌名称",    // 品牌名称
                    "id": "39"    // 品牌Id
                }
            },
            ...
        ],
        "total": "35"
    }
}
```



