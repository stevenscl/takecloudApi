# 接口鉴权

乘云API会对每个访问请求进行身份验证，即每个请求都需要在公共请求参数中包含签名信息（Signature）以验证请求者身份。

签名信息由安全凭证生成，安全凭证包括 AppId 和 AppSecret；若你还没有安全凭证，请前往乘云小程序管理后台申请，否则无法调用乘云API接口。

## 1. 申请安全凭证

在第一次使用乘云API之前，请前往乘云小程序管理后台开放平台页面申请安全凭证。

安全凭证包括 AppId 和 AppSecret：

> AppId 用于标识 API 调用者身份
>
> AppSecret 用于加密签名串和服务器端验证签名字符串的秘钥。

**注意：你必须严格保管好安全凭证，避免泄露！**

申请安全凭证的具体步骤如下：

1）登录乘云小程序后台

2）前往系统设置 &gt; 开放平台页面

![](/assets/jianquan1.png)

3）在开放平台页面，点击【添加APP】即可以创建一对AppId / AppSecret

> 目前各个小程序最多可以拥有5对AppId / AppSecret。

## 2. 生成签名串

有了安全凭证 AppId 和 AppSecret 后，就可以生成签名串了，以下是生成签名串的详细过程：

假设你的 AppId 和 AppSecret 分别是：

> AppId:  tc\_5a93848f4e8b4
>
> AppSecret:  92a739662d8e0cd0df8c4f70f61919ae

**注意：这里只是示例，请根据您实际申请的AppId和AppSecret进行后续操作！**

以查看商品列表（admin/goods/goodsList）接口为例，当用户调用这一接口时，其发送的参数可能如下：

| 参数名称 | 描述 | 参数值 |
| :--- | :--- | :--- |
| AppId | 公共参数：AppId | tc\_5a93848f4e8b4 |
| Timestamp | 公共参数：当前时间戳 | 1519696701 |
| Nonce | 公共参数：随机正整数 | 112233 |
|  |  |  |

由上表可以看出，发送的参数中的公共参数只有3个：AppId、Timestamp 和 Nonce，而不是在 [公共参数页面](/diao-yong-fang-fa/gong-gong-can-shu.md) 中所述的4个，事实上，第4个参数 Signature（签名串）正是由其他参数（包括API名称）共同生成的，具体步骤如下：



