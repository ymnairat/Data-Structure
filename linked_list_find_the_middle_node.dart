import 'linked_list.dart';
import 'node.dart';

void main() {
  var list = LinkedList<int>();
  list.push(6);
  list.push(5);
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);

  final middleNode = getMiddle(list);
  print('Middle: ${middleNode?.value}');
}

Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;

  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }

  return slow;
}