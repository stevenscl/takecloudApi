# 公共参数

公共参数是用于标识用户和接口鉴权目的的参数, 如非必要, 在每个接口单独的接口文档中不再对这些参数进行说明, 但每次请求均需要携带这些参数, 才能正常发起请求。

| 参数名称 | 类型 | 描述 |
| :--- | :--- | :--- |
| AppId | String | 在小程序后台申请的标识身份的AppId，一个AppId对应唯一的AppSecret，而AppSecret会用来生成请求签名Signature。具体可参考 [接口鉴权](/diao-yong-fang-fa/jie-kou-jian-quan.md) 页面。 |
| Timestamp | UInt | 当前UNIX时间戳，可记录发起API请求的时间。 |
| Nonce | UInt | 随机正整数，与 Timestamp 联合起来, 用于防止重放攻击。 |
| Signature | String | 请求签名，用来验证此次请求的合法性，需要用户根据实际的输入参数计算得出。计算方法可参考[ 接口鉴权](/diao-yong-fang-fa/jie-kou-jian-quan.md) 页面。 |



