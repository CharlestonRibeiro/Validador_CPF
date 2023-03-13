class FunctionValidatesCpf {
  String cpf;

  FunctionValidatesCpf({
    required this.cpf,
  });

  bool isValid() {
    final value = cpf
        .replaceAll(RegExp(r'[^0-9]'), '')
        .split('')
        .map((e) => int.parse(e))
        .toList();
    if (value.length != 11) {
      return false;
    }
    return valid1(value, 8) == valid1(value, 9) ? true : false; 
  }

  bool valid1(List<int> date, int indexValidate) {
    int numSum = 2;
    int resultFor1 = 0;
    int resultFor2 = 0;
    int resultDiv = 0;
    int digit = 0;
    bool valid = false;

    for (int i = indexValidate; i > 0; i--) {
      resultFor1 += date[i] * numSum;
      numSum++;
    }

    for (int i = 0; i < date.length; i++) {
      resultFor2 += resultFor1 * date[i];
    }

    resultDiv = resultFor2 % 11;

    if (resultDiv < 2) {
      digit = 0;
    } else if (resultDiv >= 2) {
      digit = 11 - resultDiv;
    }

    if (digit == date[8]) {
      valid = true;
    }
    return valid;
  }
}