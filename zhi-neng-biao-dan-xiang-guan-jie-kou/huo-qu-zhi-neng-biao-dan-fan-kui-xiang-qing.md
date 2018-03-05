## 1. 接口描述
本接口（/admin/form/getFormData）用来获取智能表单反馈的详细数据。
## 2. 输入参数

|参数名称|类型|是否必选|描述|
|:--:|:--:|:--:|:--:|
|beid|String|是|小程序ID|
|pageIndex|Integer|是|分页参数：页号（默认为1）|
|pageSize| Integer|是|分页参数：页长（默认为15）|
|formId|String|是|表单Id|


## 3. 返回参数
```json
{
    "code": 0,
    "msg": "获取成功",
    "data": {
        "data": [
            {
                "id": "277",        #表单反馈的唯一Id
                "value": [          #表单反馈信息详情
                    {
                        "title": "时间",            #反馈标题
                        "value": "2018-08-13"       #反馈值
                    },
                    {
                        "title": "标题",    
                        "value": "反馈一下吼"       
                    },
                    {
                        "title": "创建时间",    
                        "value": "2018-08-13 17:50:41" 
                    }
                ],
                "create_time": "2018-08-13 17:50:41"  #反馈的创建时间
            }
        ],
        "total": "1"    #表单反馈数
    }
}
```