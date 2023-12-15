import 'linked_list.dart';

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);

  print('Original list: $list');
  list.reverse();
  print('Reversed list: $list');
}