# 订单回调

## 1.字段

```json
{
	"eventType": "newOrder",  //事件的类型
	"data": {
		"openid": "onzUY0Qi3iShlsqwYYMKL-HqUxrU",  //用户的openid
		"id": "5443",      //订单id
		"uid": "10575",
		"beid": "802",
		"credit": "0",      //积分
		"price": "0.01",    //价格
		"ordersn": "D304797961716432",//订单Sn
		"dispatchexpress": "_free", 
		"dispatchprice": "0.00",//快递价格
		"dispatch_name": "快递免邮",
		"express_sn": "",   //快递
		"express_code": "",  //快递号
		"express_name": "",  
		"address_address": "乌兰浩特市",      // 收货详细地址
		"address_area": "乌兰浩特市",        // 收货地址，区级
		"address_city": "兴安盟",            // 收货地址，市级
		"address_province": "内蒙古自治区",  // 收货地址，省级
		"address_realname": "韩",            // 收货人名称
		"address_mobile": "13838063349",     // 收货人联系方式
		"status": "0",                     //订单状态(-6已退款 -5已退货 -4退货中， -3换货中， -2退款中，-1取消状态，0普通状态，1为已付款，2为已发货，3为成功)
		"createtime": "1551679796",
		"form_id": "0",            //用于下发发货消息
		"coupon_id": "0",          //优惠券ID
		"coupon_money": "0",       //优惠金额
		"order_type": "1",        //订单类型  1商城类
		"distributor_id": "0",    //  分销人员的ID
		"groupbuy_user_id": "0",   //拼团id
		"source": "0",             //订单来源 0普通
		"been_refund": "0.00",    //已退金额
		"delivery_type": "3",     //0 商家自配送 1 达达配送 2 蜂鸟配送 3 物流配送 4 到店自提
		"paytype": "0",   //支付方式 0 微信
		"channel_id": "0",  //	推广渠道Id
		"virtual_goods_info": "0",//0实体1虚拟商品
		"weight": "0",//重量
		"out_trade_no": "",//扫呗单号
		"is_after_sale": "0",//该订单是否进行过售后处理(0无,1有)
		"plat": "1",
		"refund_voucher": "",
		"prepay_id": "wx04140956555818a643c2637c1300965916",
		"is_pay": "0",
		"credit_price": "0.00" 
	}
}
```



