# 请求结构

## 1. 通信协议

乘云API的所有接口均通过HTTPS进行通信，提供高安全性的通信通道。

## 2. 请求方法

同时支持 POST 和 GET 请求，需要注意不能混合使用。即如果使用 GET 方式，则参数均从 Querystring 取得；如果使用 POST 方式，则参数均从 Request Body 中取得，Querystring 中的参数将忽略。两种方式参数格式规则相同，一般使用GET，当参数字符串过长时使用POST，请见各接口详细描述。

## 3. 字符编码

均使用UTF-8编码。

## 4. API请求结构

| 名称 | 描述 | 备注 |
| :--- | :--- | :--- |
| API名称 | API名称，如 admin/goods/goodsList | 详见 [API概览](/apigai-lan.md) |
| 公共参数 | 每个接口都包含的通用参数 | 详见 [公共参数](/diao-yong-fang-fa/gong-gong-can-shu.md) 页面 |
| 请求参数 | 每个接口请求所需的参数 | 详见每个接口的说明 |



