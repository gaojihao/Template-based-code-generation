# -*- coding: utf-8 -*-
import os,sys,shutil

root = os.getcwd() #获取当前工作目录路径
path = sys.path[0] #源文件路径

# 文件字符替换
def file_replace(path,moudleName):
    print path

    try:
        f = open(path, 'w+',encoding='utf-8')
        content = f.read()
        print content
        f.write(content)
        f.flush()
    finally:
        if f:
            f.close()
    


# 文件夹遍历
def dir_ergodic(file_dir,moudleName):
    for root, dirs, files in os.walk(file_dir):
        print root
        print dirs   #os.walk()所在目录的所有目录名
        print files  #os.walk()所在目录的所有非目录文件名

        for name in files:
            file_path = os.path.join(root, name)
            file_replace(file_path,moudleName)
        
        for name in dirs:
            dir_ergodic(os.path.join(root, name),moudleName)


# 文件夹拷贝
def files_copy(from_dir,to_dir,moudleName):
    dir = to_dir + '/' + moudleName.capitalize()

    if os.path.exists(dir): #目录已存在则删除目录
        shutil.rmtree(dir)
    
    shutil.copytree(from_dir, dir)
    dir_ergodic(dir,moudleName)


def main():
    name = raw_input('请输入模块名称:')

    moudles = name.split(',')

    for moudleName in moudles:
        moudle = moudleName.strip()
        if len(moudle) > 3:
            files_copy(path+'/Template', root, moudle)


if __name__ == '__main__':
    main()