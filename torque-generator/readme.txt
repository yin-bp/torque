改造的功能清单：
1.从schema xml中获取sql语句时， mysql timestamp 缺省值问题改造，修改platform接口
2.sql 到xml schema转换时字符串缺省值解析问题 ，如果值中带有空格导致无法正常解析
3.根据表关系（主子表）来生成sql 文件中的语句位置（数据插入sql文件和建库sql文件）

发现的问题：kettle的r_tran_hop表中的condition字段无法再mysql中使用
