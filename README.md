## 本项目实现的最终作用是基于JSP家校通管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 教师信息管理
 - 班级管理
 - 管理员登录
 - 系统设置公告管理
 - 论坛管理
 - 课程管理
### 第2个角色为家长角色，实现了如下功能：
 - 在线留言
 - 学生成绩管理
 - 家长首页
 - 请假管理
 - 课程表查看
 - 通知公告
### 第3个角色为教师角色，实现了如下功能：
 - 学生成绩管理
 - 家长查询
 - 教师论坛
 - 班级相册管理
 - 请假管理
 - 课程表管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** hscs

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [banjixiangce](#banjixiangce) |  |
| [banjixinxi](#banjixinxi) |  |
| [bankuai](#bankuai) |  |
| [dx](#dx) |  |
| [jiachangxinxi](#jiachangxinxi) |  |
| [jiaoshixinxi](#jiaoshixinxi) |  |
| [kechengbiao](#kechengbiao) |  |
| [kechengxinxi](#kechengxinxi) |  |
| [liuyanban](#liuyanban) |  |
| [pinglun](#pinglun) |  |
| [qingjiashenqing](#qingjiashenqing) |  |
| [tiezi](#tiezi) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [xueshengchengji](#xueshengchengji) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="banjixiangce">banjixiangce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xiangcebianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | xiangcemingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xiangce |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shouyezhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | faburen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="banjixinxi">banjixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="bankuai">bankuai</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  4   | jianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | banzhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="jiachangxinxi">jiachangxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | jiachangzhanghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | jiachangxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | jiachangzhiye |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xueshengxuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | xueshengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | jiachangshouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | jiachangyouxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | xueshengzhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | jiaoshihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  15   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaoshixinxi">jiaoshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | jiaoshihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | jiaoshixingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 教师姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | jibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | zhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 照片  |
|  10   | jiaoshijianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 教师简介  |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="kechengbiao">kechengbiao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | zhouyi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kechengming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | zhouer |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | kechengmingyi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | zhousan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | kechengminger |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zhousi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | kechengmingsan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | zhouwu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | kechengmingsi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="kechengxinxi">kechengxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="qingjiashenqing">qingjiashenqing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | qingjiadanhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | jiachangzhanghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jiachangxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xueshengxuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xueshengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | jiaoshihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | qingjiayuanyin |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | issh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | shhf |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="tiezi">tiezi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bankuai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  4   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | faburen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  8   | fid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xueshengchengji">xueshengchengji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | chengjidanhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | jiachangzhanghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jiachangxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xueshengxuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xueshengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zongchengji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | gekemingxi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | chengjizouxiangtu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | jiaoshihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | logo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
