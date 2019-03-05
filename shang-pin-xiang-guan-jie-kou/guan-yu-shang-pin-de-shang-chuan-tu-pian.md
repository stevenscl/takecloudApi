# 商品图片上传

## 1.接口描述

本接口（admin/goods/uploadImg）用于上图分类图片和商品图片。

## 2.输入参数

| 参数名称 | 类型 | 是否必选 | 描述 |
| :--- | :--- | :--- | :--- |
| file | jpg/gif/png/bmp | 是 | 图片文件 |
| uploadImagesWidth | Integer | 否 | 文件的宽度\(例如2500\) |
| uploadImagesHeight | Integer | 否 | 文件的高度\(例如1034\) |

## 3.输出参数

详见输出示例

## 4.错误返回

详见错误描述

## 5.示例

### 输出

```json
{
    "code": 0,
    "msg": "获取商品列表数据成功",
    "data": {
                "id": "2562",    // 图片Id
                "url": "https://weapp-1253522117.image.myqcloud.com//image/20180124/7c362490cc2711a3.png",    // 图URL
                "type": "1"      //1普通图片
    }
}
```



