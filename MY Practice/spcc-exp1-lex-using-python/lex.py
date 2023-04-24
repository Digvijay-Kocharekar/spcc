import numpy as np

list1=[]


with open('prog.c','r') as f:
    for line in f:
        for word in line.split():
            list1.append(word)

print(list1)

identifiers = ['sum','a','b']
keywords = ['int','printf','void','main']
preprocessors = ['#include','<stdio.h>']
arithmetic_operators = ['+','-','/','*','=']
relational_operators = ['>','<','==']
symbols = [",","#","(",")",";","{","}",]


identifiers_list = []
keywords_list = []
preprocessors_list = []
arithmetic_operators_list = []
relational_operators_list = []
symbols_list = []
numbers_list = []
all = []

for word in list1:
    if word in identifiers:
        if word not in identifiers_list:
            identifiers_list.append(word)

    elif word in keywords:
        if word not in keywords_list:
            keywords_list.append(word)

    elif word in preprocessors:
        if word not in preprocessors_list:
            preprocessors_list.append(word)

    elif word in arithmetic_operators:
        if word not in arithmetic_operators_list:
            arithmetic_operators_list.append(word)

    elif word in relational_operators:
        if word not in relational_operators_list:
            relational_operators_list.append(word)

    elif word in symbols:
        if word not in symbols_list:
            symbols_list.append(word)

    else:
        all.append(word)

for word in list1:
    if word not in numbers_list:
        if word.isnumeric() == True:
            numbers_list.append(word)
            all.remove(word)


print("\n\nidentifiers = " , identifiers_list)
print("keywords = ", keywords_list )
print("preprocessors = ", preprocessors_list )
print("arithmetic_operators = ", arithmetic_operators_list )
print("relational_operators = ", relational_operators_list )
print("symbols = ", symbols_list )
print("numbers = ", numbers_list )
print("Other charachters  = ", all )