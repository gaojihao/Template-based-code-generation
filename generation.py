# -*- coding: utf-8 -*-
import os,sys,shutil
import codecs
import re
import getpass
import time 

root = os.getcwd() #获取当前工作目录路径
path = sys.path[0] #源文件路径

# 文件字符替换
def file_replace(path,moudleName):

    localtime = time.strftime("%Y/%m/%d", time.localtime()) 
    user = getpass.getuser() #用户名称

    with codecs.open(path, mode='r+bw+') as f:
        content = f.read()
        # 正则替换
        pattern = re.compile('Template')
        content = re.sub(pattern, moudleName, content)

        # 替换用户名称
        pattern = re.compile('user')
        content = re.sub(pattern, user, content)

        # 替换创建时间
        pattern = re.compile('YYYY/MM/DD')
        content = re.sub(pattern, localtime, content)

        f.seek(0)
        f.truncate()
        f.write(content)
        f.flush()
        f.close()
    
    #重命名文件
    dstDir = path.replace('Template',moudleName)
    os.rename(path,dstDir)

# 文件夹遍历
def dir_ergodic(file_dir,moudleName):
    for root, dirs, files in os.walk(file_dir):
        for name in files:
            file_path = os.path.join(root, name)
            file_replace(file_path,moudleName)
        
        for name in dirs:
            dir_ergodic(os.path.join(root, name),moudleName)


# 文件夹拷贝
def files_copy(from_dir,to_dir,moudleName):
    dir = to_dir + '/' + moudleName.lower()

    if os.path.exists(dir): #目录已存在则删除目录
        shutil.rmtree(dir)
    
    shutil.copytree(from_dir, dir)
    dir_ergodic(dir,moudleName)


def main():
    name = raw_input('请输入模块名称:')

    moudles = name.split(',')

    for moudleName in moudles:
        moudle = moudleName.strip()
        if len(moudle) > 2:
            files_copy(path+'/Template', root, moudle)


if __name__ == '__main__':
    main()