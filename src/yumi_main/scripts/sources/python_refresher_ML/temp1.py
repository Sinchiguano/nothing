#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""

x = 4
y = 5
z = x + y
print(z)
#Python Collections
my_list=list()
my_list = ['a', 'b', 'c', 'd']
print('my list ',my_list)

varied_list = ['a', 1, 'b', 3.14159] # a list with elements of char, integer, and float types
nested_list = ['hello', 'governor', [1.618, 42]] # a list within a list!

print(nested_list)

second_element = varied_list[1] # Grab second element of varied_list
print(second_element)


last_element = my_list[-1] # the last element of my_list
last_element_2 = my_list[len(my_list)-1] # also the last element of my_list, obtained differently
second_to_last_element = my_list[-2]


print(last_element,second_element)

NFL_list = ["Chargers", "Broncos", "Raiders", "Chiefs", "Panthers", "Falcons", "Cowboys", "Eagles"]
AFC_west_list = NFL_list[:4] # Slice to grab list indices 0, 1, 2, 3 -- "Chargers", "Broncos", "Raiders", "Chiefs"
NFC_south_list = NFL_list[4:6] # Slice list indices 4, 5 -- "Panthers", "Falcons"
NFC_east_list = NFL_list[6:] # Slice list indices 6, 7 -- "Cowboys", "Eagles"


print(NFL_list,NFC_east_list)

x = 1
y = 2
coordinates = (x, y)
print(coordinates)

year1 = 2011
month1 = "May"
day1 = 18
date1 = (month1, day1, year1)
year2 = 2017
month2 = "June"
day2 = 13
date2 = (month2, day2, year2)
years_list = [year1, year2]

print(date1,date2)

#dictionary
book_dictionary = {"Title": "Frankenstein", "Author": "Mary Shelley", "Year": 1818}
print(book_dictionary["Author"])
print(book_dictionary['Year'])



#for loop
sum = 0
for i in range(10):
    sum = sum + i
print(sum)
alternative_sum = 0+1+2+3+4+5+6+7+8+9
print(alternative_sum==sum)

ingredients = ["flour", "sugar", "eggs", "oil", "baking soda"]
for ingredient in ingredients:
    print(ingredient)


for i in range(10):
    if i % 2 == 0: # % -- modulus operator -- returns the remainder after division
        print("{} is even".format(i),i % 2)
    else:
        print("{} is odd".format(i),i % 2)
