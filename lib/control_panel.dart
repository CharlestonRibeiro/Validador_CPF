import 'dart:io';

import 'package:function_validates_cpf/function_validates_cpf.dart';

class ControlPanel {
  final String _menu = '''
            Painel de controle:
            1 - Validar CPF;
            0 - sair
          ''';

  int? _choice;
  String? _inputCPF;
  dynamic _validateCpf;

  void panel() {
    while (_choice != 0) {
      print(_menu);

      _choice = int.parse(stdin.readLineSync()!);

      switch (_choice) {
        case 0:
          print('.::FIM::.');
          break;

        case 1:
          print('Digite seu CPF:');
          _inputCPF = stdin.readLineSync();
          _validateCpf = FunctionValidatesCpf(cpf: _inputCPF!);

          print(_validateCpf.cpf);
          print('CPF: ${_validateCpf.isValid()}');
          break;

        default:
          print('Escolha invalida!');
          print('');
          break;
      }
    }
  }
}
