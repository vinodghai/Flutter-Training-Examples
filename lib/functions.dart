class ConstructorParameters {
  ConstructorParameters.required(int a, String b) {
    ConstructorParameters.required(a, b);
  }

  ConstructorParameters.positional([int a, String b]) {
    ConstructorParameters.positional();
  }

  ConstructorParameters.named({int a, String b}) {
    ConstructorParameters.named();
  }

  ConstructorParameters.requiredPositional(int a, String b, [int c, double d]) {
    ConstructorParameters.requiredPositional(a, b);
  }

  ConstructorParameters.requiredName(int a, String b, {int c, double d}) {
    ConstructorParameters.requiredName(a, b);
  }
}
