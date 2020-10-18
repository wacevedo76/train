#!/usr/bin/python3 

def max_length(word_list):
    result = 0
    for word in word_list:
        if result < len(word): result = len(word)
    return result

def displayInventory(inventory):
    item_total = 0
    longest_word = max_length(inventory.keys())
    print('Inventory:')
    for k,v in inventory.items():
        print(f'{k.rjust(longest_word + 2)} : {v}')
        item_total += v

    print(f'Total number of items: {item_total}') 

def addToInventory(inventory, itemsToAdd):
    for item in itemsToAdd:
        inventory.setdefault(item, 0)
        inventory[item] += 1

    return inventory

inventory = {
        'rope': 1, 
        'torch': 6,
        'gold coin': 42,
        'dagger': 1,
        'arrow': 12
        }

dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']

displayInventory(inventory)

inventory = addToInventory(inventory, dragonLoot)

displayInventory(inventory)
