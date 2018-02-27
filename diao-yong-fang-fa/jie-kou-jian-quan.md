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

以查看商品列表（admin/goods/goodsList）接口为例，当用户调用这一接口时，其请求的参数可能如下：

| 参数名称 | 描述 | 参数值 |
| :--- | :--- | :--- |
| AppId | 公共参数：AppId | tc\_5a93848f4e8b4 |
| Timestamp | 公共参数：当前时间戳 | 1519696701 |
| Nonce | 公共参数：随机正整数 | 112233 |
| pageIndex | 请求参数：分页（页号） | 1 |
| pageSize | 请求参数：分页（页长） | 10 |
| status | 请求参数：商品状态 | 待上架\#已上架\#已下架 |
| promote | 请求参数：商品促销活动类型 | 秒杀\#拼团\#砍价\#无促销 |

由上表可以看出，发送的参数中的公共参数只有3个：AppId、Timestamp 和 Nonce，而不是在 [公共参数页面](/diao-yong-fang-fa/gong-gong-can-shu.md) 中所述的4个，事实上，第4个参数 Signature（签名串）正是由其他参数（包括API名称）共同生成的，具体步骤如下：

### 2.1. 对参数排序

首先对所有请求的参数按参数名做字典序升序排列，所谓字典序升序排列，直观上就如同在字典中排列单词一样排序，按照字母表或数字表里递增顺序的排列次序，即先考虑第一个“字母”，在相同的情况下考虑第二个“字母”，依此类推。您可以借助编程语言中的相关排序函数来实现这一功能，如php中的ksort函数。上述示例参数的排序结果如下：

```json
{
    "AppId": "tc_5a93848f4e8b4",
    "Nonce": 112233,
    "Timestamp": 1519696701,
    "pageIndex": 1,
    "pageSize": 10,
    "promote": "秒杀#拼团#砍价#无促销",
    "status": "待上架#已上架#已下架"
}
```

使用其它程序设计语言开发时, 可对上面示例中的参数进行排序，得到的结果一致即可。

### 2.2. 拼接请求字符串

此步骤生成请求字符串。

将把上一步排序好的请求参数格式化成“参数名称”=“参数值”的形式，如对pageIndex参数，其参数名称为"pageIndex"，参数值为1，因此格式化后就为pageIndex=1。

**注意：1、“参数值”为原始值而非url编码后的值。2、若输入参数中包含下划线，则需要将其转换为“.”。**

然后将格式化后的各个参数用"&"拼接在一起，最终生成的请求字符串为：

```
AppId=tc_5a93848f4e8b4&Nonce=112233&Timestamp=1519696701&pageIndex=1&pageSize=10&promote=秒杀#拼团#砍价#无促销&status=待上架#已上架#已下架
```

### 2.3. 拼接签名原文字符串

此步骤生成签名原文字符串。

签名原文字符串由以下两个参数构成：

1）API名称：比如示例中的查看商品列表（admin/goods/goodsList）。

2）请求字符串：即上一步生成的请求字符串。

签名原文字符串的拼接规则为：

> API名称 + ? + 请求字符串

示例的拼接结果为：

```
admin/goods/goodsList?AppId=tc_5a93848f4e8b4&Nonce=112233&Timestamp=1519696701&pageIndex=1&pageSize=10&promote=秒杀#拼团#砍价#无促销&status=待上架#已上架#已下架
```

### 2.4. 生成签名串

此步骤生成签名串。

首先使用 HMAC-SHA1 算法对上一步中获得的签名原文字符串进行签，然后将生成的签名串使用 Base64 进行编码，即可获得最终的签名串。

具体代码如下，以 PHP 语言为例：

```php
$appSecret = '92a739662d8e0cd0df8c4f70f61919ae';
$srcStr = 'admin/goods/goodsList?AppId=tc_5a93848f4e8b4&Nonce=112233&Timestamp=1519696701&pageIndex=1&pageSize=10&promote=秒杀#拼团#砍价#无促销&status=待上架#已上架#已下架';
$signStr = base64_encode(hash_hmac('sha1', $srcStr, $appSecret, true));
echo $signStr;
```

最终得到的签名串为：

```
vx5d3KGOSD6HvGzOQ15WsBnIXAY=
```

使用其它程序设计语言开发时, 可用上面示例中的原文进行签名验证, 得到的签名串与例子中的一致即可。

## 3. 签名串编码

生成的签名串并不能直接作为请求参数，需要对其进行 URL 编码。

注意：如果用户的请求方法是GET，则对所有请求参数值均需要做URL编码。

如上一步生成的签名串为vx5d3KGOSD6HvGzOQ15WsBnIXAY=，则其编码后为vx5d3KGOSD6HvGzOQ15WsBnIXAY%3D。因此，最终得到的签名串请求参数\(Signature\)为：vx5d3KGOSD6HvGzOQ15WsBnIXAY%3D，它将用于生成最终的请求URL。

## 4. 鉴权失败

根据实际情况，存在以下鉴权失败的错误码，请根据实际情况处理

| 错误代码 | 错误类型 | 错误描述 |
| :--- | :--- | :--- |
| -4101 | 鉴权失败 | 调用接口不在可访问列表内，可调用接口请参见 [API概览](/apigai-lan.md) |
| -4102 | 鉴权失败 | 公共参数不完整，完整公共参数请参见 [公共参数](/diao-yong-fang-fa/gong-gong-can-shu.md) |



