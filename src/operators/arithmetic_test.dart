/// src/operators/arithmetic_test.dart
///
/// Assunto: Demonstração dos operadores aritméticos em Dart.
///
/// Este arquivo usa o framework de testes do Dart para verificar e documentar
/// o comportamento de cada operador.
///
/// Para leituras adicionais, consulte a documentação oficial:
/// @see: https://dart.dev/language/operators#arithmetic-operators
///
/// Para executar os testes, use o comando no terminal:
/// `dart test src/operators/arithmetic_test.dart`

import 'package:test/test.dart';

void main() {
  group('Operadores Aritméticos', () {

    test('deve realizar adição com o operador "+"', () {
      int a = 10;
      int b = 5;
      var resultado = a + b;

      expect(resultado, equals(15));
    });

    test('deve realizar subtração com o operador "-"', () {
      double a = 10.5;
      double b = 5.5;
      var resultado = a - b;

      expect(resultado, equals(5.0));
    });

    test('deve realizar multiplicação com o operador "*"', () {
      int a = 7;
      int b = 3;
      var resultado = a * b;

      expect(resultado, equals(21));
    });

    test('deve realizar divisão com o operador "/" e retornar um double', () {
      int a = 10;
      int b = 4;
      var resultado = a / b; // A divisão padrão sempre retorna um double.

      expect(resultado, equals(2.5));
      expect(resultado, isA<double>());
    });

    test('deve realizar divisão de inteiros com o operador "~/"', () {
      int a = 10;
      int b = 4;
      
      // O operador `~/` (divisão de truncamento) realiza a divisão e
      // descarta a parte fracionária, retornando um inteiro.
      var resultado = a ~/ b;

      expect(resultado, equals(2));
      expect(resultado, isA<int>());
    });

    test('deve encontrar o resto da divisão com o operador "%" (módulo)', () {
      int a = 10;
      int b = 3;

      // O operador `%` retorna o resto de uma divisão de inteiros.
      // 10 dividido por 3 é 3, com resto 1.
      var resultado = a % b;

      expect(resultado, equals(1));
    });

    test('deve respeitar a ordem de precedência dos operadores', () {
      // A ordem padrão é: 1º) * / ~/ %   2º) + -
      var resultado = 10 + 2 * 5; // Primeiro 2 * 5 = 10, depois 10 + 10 = 20.

      expect(resultado, equals(20));

      // Parênteses são usados para forçar uma ordem de precedência.
      var resultadoComParenteses = (10 + 2) * 5; // Primeiro 10 + 2 = 12, depois 12 * 5 = 60.
      expect(resultadoComParenteses, equals(60));
    });

  });
}