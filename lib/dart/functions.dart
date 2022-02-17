void main() {
  print(fatArrow());
  fatArrowWithReturn();

  /**
   * parameters 
   * 1. Required
   * 2. Optional ->Positional, Named, Default
   */

  requiredParametersFun(1, 2, 3);
  optionalPositionalParameters(1, 2);
  namedParameters(1, b: 2, c: 3);
}

//required parameters
void requiredParametersFun(int a, int b, int c) {
  print("a - $a, b-$b, c-$c");
}

//optional positional parameters
void optionalPositionalParameters(int a, int b, [int c = 1]) {
  print("a - $a, b-$b, c-$c");
}

void namedParameters(int a, {int b = 1, int c = 1}) {
  print("a - $a, b-$b, c-$c");
}

String fatArrow() => "Hare Krsna";
fatArrowWithReturn() => print("I dont return anything.");
