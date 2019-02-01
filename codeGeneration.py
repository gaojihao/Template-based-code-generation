# -*- coding: utf-8 -*-
import sys
import os

root = os.getcwd() #获取当前工作目录路径
path = sys.path[0] #源文件路径


def file_name(file_dir):
    for _, dirs, files in os.walk(file_dir):
        print "-----------"
        print dirs   #os.walk()所在目录的所有目录名
        print files  #os.walk()所在目录的所有非目录文件名
        print " "



def main():
    name = raw_input('请输入模块名称:')

    moudles = name.split(',')

    for moudleName in moudles:
        moudle = moudleName.strip()
        if len(moudle) > 3:
            file_name(path+'/Template')

    


if __name__ == '__main__':
    main()