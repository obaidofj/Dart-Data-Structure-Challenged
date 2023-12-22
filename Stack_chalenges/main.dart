import 'stack_from_book.dart';

void main() {

  final myList = [1, 2, 3, 4, 5];

  print('Original List:');
  print(myList);

  // print('List in Reverse:');
  printListInReverse(myList);

  String str1 = "((()))";
  String str2 = "(()";
  String str3 = "())(";

  print("((())) Balanced ? : ${isBalanced(str1)}"); // gives true
  print("(()    Balanced ? : ${isBalanced(str2)}"); // gives false
  print("())(   Balanced ? : ${isBalanced(str3)}"); // gives false

  //other code to try for stack
    // final stack = Stack<int>();
  // stack.push(1);
  // stack.push(2);
  // stack.push(3);
  // stack.push(4);
  // print(stack);

  // // final element = stack.pop();
  // // print('Popped: $element');

  // print('Peek: ${stack.peek}');

  // const list = ['S', 'M', 'O', 'K', 'E'];
  // final smokeStack = Stack.of(list);
  // print(smokeStack);
  // print(smokeStack.pop());
  
}

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

