import 'stack.dart';

void main() {
  List<int> originalList = [1, 2, 3, 4, 5];
  printInReverse(originalList);
}

void printInReverse<E>(List<E> list) {
  final stack = Stack<E>.of(list);

  print('Original List: $list');
  print('Reversed List:');
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}