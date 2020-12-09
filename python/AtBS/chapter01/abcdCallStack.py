#!/usr/bin/python3

################################################################################
# Author: Chapter 02: Flow Control
# Date: 08-12-2020
# Description: examining the call stack
# Usage: ./abcdCallStack.py
################################################################################

def a():
    print('a() starts')
    b()
    d()
    print('a() returns')

def b():
    print('b() starts')
    c()
    print('b() returns')

def c():
    print('c() starts')
    print('c() returns')

def d():
    print('d() starts')
    print('d() returns')

a()
