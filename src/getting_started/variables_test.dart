/// src/getting_started/variables_test.dart
///
/// Este arquivo contém testes que demonstram a declaração e o uso de
/// variáveis e tipos em Dart.
///
/// Para executar os testes, use o comando no terminal:
/// `dart test src/getting_started/variables_test.dart`

import 'package:test/test.dart';

void main() {
  // O `group` agrupa testes relacionados, deixando a saída mais organizada.
  group('Demonstração de Variáveis e Tipos em Dart', () {

    test('deve declarar tipos numéricos como int e double corretamente', () {
      int idade = 30; // Tipo para números inteiros.
      double altura = 1.75; // Tipo para números de ponto flutuante.

      // `expect` é a função de asserção do pacote de teste.
      // `isA<T>()` verifica se a variável é do tipo T.
      expect(idade, isA<int>());
      expect(altura, isA<double>());

      // `num` é um tipo que pode conter tanto `int` quanto `double`.
      num qualquerNumero = 10; // Começa como int
      expect(qualquerNumero, isA<int>());

      qualquerNumero = 10.5; // Pode ser reatribuído para double
      expect(qualquerNumero, isA<double>());
    });

    test('deve declarar String e bool', () {
      String nome = 'Dart'; // Tipo para texto.
      bool isCool = true; // Tipo para valores verdadeiro/falso.

      expect(nome, equals('Dart'));
      expect(isCool, isTrue);
    });

    test('deve usar inferência de tipo com "var"', () {
      // `var` infere o tipo na inicialização e não permite mudança de tipo depois.
      var linguagem = 'Dart'; // O compilador infere como String.
      var ano = 2024;       // Infere como int.

      expect(linguagem, isA<String>());
      expect(ano, isA<int>());

      // A linha abaixo causaria um erro de compilação, pois o tipo foi fixado como String.
      // linguagem = 123;
    });

    test('deve entender a diferença entre "final" e "const"', () {
      // `final`: a variável não pode ser reatribuída após a inicialização.
      // O valor pode ser definido em tempo de execução.
      final String nomeFinal = 'Ana';
      final horaDeEntrada = DateTime.now(); // Válido, pois o valor é calculado em tempo de execução.

      expect(nomeFinal, isA<String>());
      expect(horaDeEntrada, isA<DateTime>());

      // A linha abaixo causaria um erro de compilação.
      // nomeFinal = 'Bia';

      // `const`: a variável é uma constante de tempo de compilação.
      // Seu valor já deve ser conhecido antes de o programa rodar.
      const double PI = 3.14;
      const linguagem = 'Dart';

      expect(PI, greaterThan(3));
      expect(linguagem, equals('Dart'));

      // A linha abaixo causaria um erro de compilação, pois DateTime.now() não é constante.
      // const horaConstante = DateTime.now();
    });

    test('deve lidar com null safety (segurança contra nulos)', () {
      // Por padrão, variáveis não podem ser nulas.
      // String nome = null; // Erro de compilação.

      // Para permitir nulos, use o operador `?`.
      String? descricao; // O valor inicial é `null`.

      expect(descricao, isNull);

      descricao = 'Um projeto de aprendizado de Dart.';
      expect(descricao, isNotNull);
      expect(descricao, isA<String>());
    });

    test('deve usar o tipo "dynamic" para variáveis que podem mudar de tipo', () {
      // `dynamic` desliga a verificação estática de tipos. Use com cuidado!
      dynamic variavelMista = 'começa como texto';
      expect(variavelMista, isA<String>());

      variavelMista = 100;
      expect(variavelMista, isA<int>());

      variavelMista = false;
      expect(variavelMista, isA<bool>());
    });

  });
}