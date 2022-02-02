import 'package:ccl/ccl.dart' as ccl;

add(a, b) => a + b;
subtract(a, b) => a - b;
multiply(a, b) => a * b;
divide(a, b) => a / b;
modulo(a, b) => a % b;

const operators = {
  "+": add,
  "-": subtract,
  "*": multiply,
  "/": divide,
  "%": modulo
};

calc(expr) {
  var m =
      RegExp("(.*)(" + operators.keys.map((x) => "\\$x").join("|") + ")(.*)");
  var match = m.firstMatch(expr);
  return operators[match[2]](num.parse(match[1]), num.parse(match[3]));
}

main() {
  while (true) {
    print(calc(stdin.readLineSync()));
  }
}
