
# The Linked List Four Challenges

This folder contains solutions to various linked list challenges implemented in Dart.

## Challenges

### Challenge 1: Print in Reverse
This to createing a function that prints the nodes of a linked list in reverse order.
```dart

void printReverse() {
  _printReverse(head);
}

void _printReverse(Node<E>? node) {
  if (node == null) {
    return;
  }
  _printReverse(node.next);
  print(node.value);
}
```

### Challenge 2: Find the Middle Node
This to createing a function that finds the middle node of a linked list.
```dart
Node<E>? findMiddleNode() {
  if (head == null) {
    return null; 
  }

  var current = head;
  var count = 0;

  
  while (current != null) {
    count++;
    current = current.next;
  }

  
  current = head;
  for (var i = 0; i < count ~/ 2; i++) {
    current = current!.next;
  }

  return current; 
}
```


### Challenge 3: Reverse a Linked List
This to createing a function that reverses a linked list by manipulating the node pointers.
```dart
 void reverse() {
    Node<E>? prev = null;
    Node<E>? current = head;
    Node<E>? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
    tail = current;
  }

```

### Challenge 4: Remove All Occurrences
This to createing a function that removes all occurrences of a specific element from a linked list.
```dart
 void removeAllOccurrences(E value) {
    Node<E>? current = head;
    Node<E>? prev = null;

    while (current != null) {
      if (current.value == value) {
        if (prev == null) {
          head = current.next;
        } else {
          prev.next = current.next;
        }

        if (current == tail) {
          tail = prev;
        }
      } else {
        prev = current;
      }

      current = current.next;
    }
  }
```

## Usage

Each challenge solution is implemented within the `LinkedList` class in Dart. To test the solutions, create a Dart project and use the provided code snippets. Examples of usage:

```dart
void main() {

  final list = LinkedList<int>();
  list.push(4);
  list.push(3);
  list.push(3);
  list.push(2);
  list.push(1);

  print(list);

  list.printReverse();
  
  print("Middle Node Value : ${list.findMiddleNode()?.value}");

  list.reverse();
  print(list);

  list.removeAllOccurrences(3);
  print(list);

}

```

You can run code for those challenges by running this command in your terminal : 
```
dart .\Linkedlist_chalenges\main.dart
```

