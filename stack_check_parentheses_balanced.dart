import 'stack.dart';

void main() {
  String example1 = 'h((e))llo(world)()';
  String example2 = '(hello world';

  print('Example 1 is balanced: ${checkParenthesesBalanced(example1)}');
  print('Example 2 is balanced: ${checkParenthesesBalanced(example2)}');
}

bool checkParenthesesBalanced(String input) {
  final stack = Stack<String>();

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (currentChar == '(') {
      stack.push(currentChar);
    } else if (currentChar == ')') {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }

  return stack.isEmpty;
}