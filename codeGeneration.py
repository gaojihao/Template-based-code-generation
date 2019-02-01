# -*- coding: utf-8 -*-
import os,sys,shutil

root = os.getcwd() #获取当前工作目录路径
path = sys.path[0] #源文件路径


def file_replace(file_dir,moudleName):
    for _, dirs, files in os.walk(file_dir):
        print "-----------"
        print dirs   #os.walk()所在目录的所有目录名
        print files  #os.walk()所在目录的所有非目录文件名
        print " "

def files_copy(from_dir,to_dir,moudleName):
    dir = to_dir + '/' + moudleName.capitalize()

    if os.path.exists(dir): #目录已存在则删除目录
        shutil.rmtree(dir)
    
    shutil.copytree(from_dir, dir)
    file_replace(dir,moudleName)


def main():
    name = raw_input('请输入模块名称:')

    moudles = name.split(',')

    for moudleName in moudles:
        moudle = moudleName.strip()
        if len(moudle) > 3:
            files_copy(path+'/Template', root, moudle)


if __name__ == '__main__':
    main()