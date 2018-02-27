# 示例代码

## 1. SDK代码下载

> 目前仅提供 PHP 版本的SDK，其他语言的SDK之后陆续开放，更新关注 [https://github.com/takecloud](https://github.com/takecloud/)

[示例代码 PHP 版](https://github.com/takecloud/takecloudapi-sdk-php)

将示例代码中的 AppId 和 AppSecret 替换成实际的 AppId 和 AppSecret

示例代码仅供参考，请更具实际情况使用。

## 2. PHP语言的示例代码

> 请先下载 PHP 版本的SDK

```php
<?php
// 设置http头返回json格式
header('Content-type: application/json');

require_once './src/TakecloudApi.php';

$config = [
    'AppId' => 'tc_5a7be935ca123',  // 您的appId
    'AppSecret' => '5b0dbec2b6346ba7053dee52c9485b8f'  // 您的appSecret
];

$app = new TakecloudApi($config);
$ret = $app->send('admin/goods/goodsList',[
    'pageIndex' => 1,
    'pageSize' => 10,
    'status' => '待上架#已上架#已下架',
    'promote' => '秒杀#拼团#砍价#无促销'
]);
echo $ret;
```



