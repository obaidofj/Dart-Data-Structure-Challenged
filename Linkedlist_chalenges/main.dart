import 'LinkedlistWithSolutins.dart';

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

  // Other codes to try :
  // final list = LinkedList<int>();
  // list.append(1);
  // list.append(2);
  // list.append(3);

  // print(list);

  // final list = LinkedList<int>();
  // list.push(3);
  // list.push(2);
  // list.push(1);

  // print('Before: $list');

  // var middleNode = list.nodeAt(1)!;
  // list.insertAfter(middleNode, 42);
  // list.insertBefore(middleNode,66);

  // final poppedValue = list.pop();

  // print('After:  $list');
  // print('Popped value: $poppedValue');

  // print('After:  $list');

  // final removedValue = list.removeLast();

  // print('After:  $list');
  // print('Removed value: $removedValue');

  // final aNode = list.nodeAt(3);
  // final removedValue2 = list.removeAfter(aNode!);

  // print('After:  $list');
  // print('Removed value: $removedValue2');

  //   for (final element in list) {
  //   print(element);
  // }
}
