
# Challenges: Using Stack to print list in reverse order and to Check Balanced Parentheses

## Overview

This folder contains Dart code for two challenges one related to using a stack data structure to print list in reverse order and other to check for balanced parentheses in a given string.

## Challenge 1: Print list in reverse order using stack for that

### Description

This challenge demonstrates how to print list in reverse order by using stack and the pop elements of it and add  to an empty list in using a loop, then print it.

### Code Snippet

```dart
void printListInReverse<T>(List<T> list) {
  final stack = Stack<T>();
  for (var element in list) {
    stack.push(element);
  }

  List<T> rlist = [];
  print('List in reverse order:');
  
  while (stack.isNotEmpty) {
    rlist.add(stack.pop());
   
  }
  print(rlist);
}

```

## Challenge 2: Checking Balanced Parentheses Using a Stack

### Description
This challenge showcases a Dart function that checks for balanced parentheses in a string using a stack data structure.

### Code Snippet

```dart
bool isBalanced(String str) {
  if (str.isEmpty) return true; 

  List<String> stack = [];
  Map<String, String> parentheses = {'(': ')', '[': ']', '{': '}'};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (parentheses.keys.contains(char)) {
      stack.add(char); 
    } else if (parentheses.values.contains(char)) {
      if (stack.isEmpty || parentheses[stack.removeLast()] != char) {
        return false; 
      }
    }
  }

  return stack.isEmpty; 
}

```

## Usage
Clone the whole repository and run the Dart file to test the provided challenges code.

to run code for these two challenges by running this command in your terminal : 
```
dart .\Stack_chalenges\main.dart
```
