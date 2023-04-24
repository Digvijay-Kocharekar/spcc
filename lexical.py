import numpy as np

list1=[]

# f = open("D:\CS Programs Omen\Sem6-Spcc-practicals\addition.c")

with open('ddition1.c','r') as f:
    for line in f:
        for word in line.split():
            list1.append(word)

print(list1)