import 'linked_list.dart';
import 'node.dart';

void main() {
  var list = LinkedList<int>();
  list.push(1);
  list.push(2);
  list.push(3);

  print('Original list: $list');
  print("Printing in reverse:");
  printListInReverse(list);
}

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}

void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;

  printNodesRecursively(node.next);

  print(node.value);
}
