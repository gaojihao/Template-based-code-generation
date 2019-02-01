#### 基于代码模板自动生成代码

```
sys.path[0]         #源文件父路径
sys.argv[0]         #源文件路径
os.getcwd()         #获取当前工作目录路径

shutil.copytree(from_dir, to_dir) #拷贝目录，to_dir的路径必须不存在，此处的处理方式是如果这个路径文件已存在，删除后新建
```