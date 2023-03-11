class FunctionValidatesCpf {
  String? _cpf;
  bool? validator;

  String? get cpf => _cpf;

  set cpf(String? cpf) {
    if (cpf != null &&
        RegExp(r'([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})')
            .hasMatch(cpf)) {
      _cpf = cpf;
      validator = true;
    } else {
      _cpf = "";
      validator = false;
    }
  }
}

