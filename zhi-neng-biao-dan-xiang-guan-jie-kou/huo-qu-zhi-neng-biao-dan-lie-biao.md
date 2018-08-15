## 1. 接口描述
本接口（/admin/form/getFormList）用来获取智能表单列表。
## 2. 输入参数

|参数名称|类型|是否必选|描述|
|:--:|:--:|:--:|:--:|
|beid|String|是|小程序ID|
|pageIndex|Integer|否|分页参数：页号（默认为1）|
|pageSize| Integer|否|分页参数：页长（默认为10）|
|status|String|否|表单状态，格式 “状态#状态”（可选状态为 ‘使用中’、‘已失效’， 默认为空字符串）|
|formName|String|否|表单名称（默认为空字符串）|
|beginTime|String|否|创建开始时间，格式“2018-08-15”（默认为空字符串）|
|endTime|String|否|创建结束时间，格式“2018-08-15”（默认为空字符串）|


## 3. 返回参数
```json
{
    "code": 0,
    "msg": "获取成功",
    "data": {
        "data": [
            {
                "id": "150",        #表单ID
                "beid": "802",        #小程序Id
                "component_id": "1534146198038",  #标识表单唯一（时间戳格式）
                "tpl_id": "471",    #对应的视觉引擎模板Id	
                "tpl_page_id": "677",  #对应的视觉引擎模板页面Id	
                "form_name": "pipi",    #表单名称    
                "status": "2",      #表单状态 0 已删除 1 未使用 2使用中
                "enable": "1",      #是否有效	
                "create_time": "2018-08-13 15:44:33",   #创建时间
                "tplPage": {           #对应的视觉引擎模板页面信息
                    "id": "677",        #页面Id
                    "title": "首页"     #页面名称
                },
                "value": [      #表单反馈信息概览
                    {
                        "id": "274",            #反馈Id
                        "form_id": "150"        #表单Id
                    },
                    {
                        "id": "275",            
                        "form_id": "150"        
                    },
                    {
                        "id": "276",            
                        "form_id": "150"        
                    },
                    {
                        "id": "277",           
                        "form_id": "150"       
                    }
                ],
                "valueCount": 4             #表单反馈数
            }
        ],
        "total": 1                      #总记录数
    }
}
    

```