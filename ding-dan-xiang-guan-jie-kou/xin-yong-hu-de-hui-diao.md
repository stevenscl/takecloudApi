# 新用户回调 {#订单回调}

## 1.字段 {#1字段}

```json
{
    "eventType": "userInfo",  //事件的类型  新用户信息
    "data": {
        "id": "1084975",
    "beid": "64",       
    "plat": "1",
    "other_plat_user_id": "",
    "baidu_swan_id": "",
    "wechat": null,
    "signature": null,
    "email": "",
    "credit": "0",//用户的总积分
    "continuous_login_days": "0",
    "used_credit": "0",           //用户已使用的积分
    "open_vip_card": "0",          //是否开启会员卡 
    "activation_time": "0",   
    "card_number": "",              //会员卡号   
    "card_remaining": "0.00",          //会员金额
    "discount": "0.00",               //折扣
    "openid": "op4oN0d8EaUWC6d6v-0J6i_oajnI",   //openid
    "realname": "",        //真实姓名
    "nickname": "",        //昵称
    "gender": "0",         //    性别 0 保密 1 男 2 女
    "mobile": "",
    "birthday": "0000-00-00",
    "pwd": "",
    "createtime": "1554098132",
    "last_login_time": "0",
    "status": "1",            //状态 0为禁用，1为可用
    "experience": "0",
    "avatar": "",            //用户头像
    "avatar_id": "0",  
    "avatar_url": "",
    "distributor": "0",       //0 为普通用 1 为一级分销商
    "unionid": "",            //用户唯一标识  
    "last_signin_time": "0"   //最后签到时间
    } 
}
```



