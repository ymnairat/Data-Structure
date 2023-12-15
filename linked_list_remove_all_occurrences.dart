import 'linked_list.dart';

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(2);
  list.push(1);
  list.push(1);

  list.removeAll(3);
  print(list);
}

extension RemovableLinkedList<E> on LinkedList {
  void removeAll(E value) {
    while (head != null && head!.value == value) {
      head = head!.next;
    }

    var previous = head;
    var current = head?.next;
    while (current != null) {
      if (current.value == value) {
        previous?.next = current.next;
        current = previous?.next;
        continue;
      }
      previous = current;
      current = current.next;
    }
    tail = previous;
  }
}
