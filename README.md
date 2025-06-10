# Playground e Cheatsheet Para Aprender Dart

> Essa é uma coleção de projetos Dart dividida em [tópicos](#índice) que contém
> exemplos de código com explicações, diferentes usos e links para outras leituras.

> _Ler em:_ [_English_](README.en-US.md), [_Español_](README.es-ES.md), [_Traditional Chinese_](README.zh-TW.md).

É um **playground** porque você pode fazer alterações no código para ver como ele se comporta, além de [testá-lo](#testando-o-código) usando asserções. Também é possível [revisar o código](#revisando-o-código) que você escreveu automaticamente e verificar se ele se encaixa no guia de estilo de código Dart. Isso tudo pode tornar seu processo de aprendizagem mais interativo e ajudar a manter a qualidade do código bastante alta desde o início.

É um **cheatsheet** porque você pode voltar a esses exemplos de código quando quiser recapitular a sintaxe das [estruturas padrão do Dart](#índice). O código está cheio de testes com asserções, então você poderá ver o retorno das funções sem precisar executá-las manualmente.

> _Você pode se interessar também por 🤖 [SUA-IDEIA-DE-PROJETO-DART]_

## Como Usar Esse Repositório

Cada projeto neste repositório é estruturado para facilitar a aprendizagem e experimentação dos tópicos de Dart. Aqui está um exemplo de como um projeto típico está organizado:

```dart
// Nome do tópico
// Exemplo: Lists (Listas em Dart)

/// Link para leituras adicionais (usando comentários de documentação do Dart)
/// @see: https://dart.dev/guides/libraries/library-tour#collections

// Descrição do Tópico
// Uma explicação mais detalhada sobre o tópico atual, como listas (Lists) em Dart.
// Exemplo: As listas em Dart são coleções ordenadas de objetos, oferecendo um
// objeto que pode conter múltiplos elementos em uma ordem específica.

// Exemplo de Código
final numbers = <int>[]; // Declaração de uma lista de inteiros

// Explicação do Subtópico
// Cada arquivo contém exemplos e funções de teste que ilustram subtópicos
// (ex.: tipos de lista, métodos de lista).
```

### Exemplo: Trabalhando com Listas em Dart

As listas em Dart (`List`) são a implementação mais comum de uma coleção ordenada de itens. Elas podem ser de tamanho fixo ou dinâmico. O tipo de variável que a lista pode armazenar é definido usando a sintaxe genérica (`<T>`). Veja abaixo um exemplo de como declarar e manipular listas em Dart:

```dart
// Declaração de uma lista de inteiros chamada "numbers"
var numbers = <int>[];

// Adicionando elementos à lista
numbers.add(1);
numbers.add(2);
numbers.add(3);

// Imprimindo os elementos da lista
print(numbers); // Saída: [1, 2, 3]

// Adicionando múltiplos elementos de outra lista usando o método addAll
var moreNumbers = [4, 5, 6];
numbers.addAll(moreNumbers);

// Imprimindo os elementos atualizados da lista
print(numbers); // Saída: [1, 2, 3, 4, 5, 6]
```

Diferença entre Listas Dinâmicas e de Tamanho Fixo

- **Listas Dinâmicas (Padrão)**: São de tamanho dinâmico, ou seja, podem crescer e diminuir conforme necessário (`.add()`, `.remove()`). São criadas com `[]` ou `List<T>.empty(growable: true)`.
- **Listas de Tamanho Fixo**: Têm um tamanho que não pode ser alterado após a criação. São melhores para quando o número de elementos é conhecido e não mudará. Tentar usar `.add()` ou `.remove()` resultará em um erro.

### Então você pode querer fazer o seguinte:

- [Encontrar o tópico](#índice) que deseja aprender ou recapitular.
- Ler os comentários e/ou a documentação vinculada em cada projeto (como no exemplo acima).
- Analisar os exemplos e os testes para ver exemplos de uso e a saída esperada.
- Alterar o código ou adicionar novos testes para ver o que acontece.
- [Executar testes](#testando-o-código) e [revisar o código](#revisando-o-código) para ver se ele funciona e está escrito corretamente.

## Índice

1. **Começando**
   - [O que é Dart](src/getting_started/what_is_dart.md)
   - [Sintaxe Básica do Dart](src/getting_started/dart_syntax.md)
   - [Variáveis](src/getting_started/test_variables.dart)
2. **Operadores**
   - [Operadores Aritméticos](src/operators/test_arithmetic.dart) (`+`, `-`, `*`, `/`, `~/`, `%`)
   - [Operadores Bitwise](src/operators/test_bitwise.dart) (`&`, `|`, `^`, `>>`, `<<`, `>>>`, `~`)
   - [Operadores de Atribuição](src/operators/test_assigment.dart) (`=`, `+=`, `??=`, `-=`, `*=`, `/=` etc.)
   - [Operadores de Relacionais](src/operators/test_relation.dart) (`==`, `!=`, `>`, `<`, `>=`, `<=`)
   - [Operadores Lógicos](src/operators/test_logical.dart) (`&&`, `||`, `!`)
3. **Tipos de Dados**
   - [int](src/data_types/test_int.dart)
   - [double](src/data_types/test_double.dart)
   - [num](src/data_types/test_num.dart)
   - [String](src/data_types/test_string.dart)
   - [bool](src/data_types/test_bool.dart)
   - [List](src/data_types/test_list.dart) (Listas)
   - [Set](src/data_types/test_set.dart) (Conjuntos)
   - [Map](src/data_types/test_map.dart) (Mapas)
   - [dynamic e Object](src/data_types/test_dynamic_object.dart)
4. **Controles de Fluxo**
   - [A declaração `if-else`](src/control_flow/test_if_else.dart)
   - [O laço `for` (incluindo `for-in`)](src/control_flow/test_for_for_in.dart)
   - [O laço `while` e `do-while`](src/control_flow/test_while_do_while.dart)
   - [A declaração `switch`](src/control_flow/test_switch.dart)
   - [As declarações `break` e `continue`](src/control_flow/test_break_continue.dart)
   - [A declaração `try-catch-finally` para tratamento de exceções](src/control_flow/test_try_catch_finally.dart)
   - [A declaração `return`](src/control_flow/test_return.dart)
   - [Programação Assíncrona (`async/await`)](src/control_flow/test_async_await.dart)
5. **Funções**
   - [Declaração de Funções](src/functions/test_functions.dart)
   - [Parâmetros (posicionais, nomeados, opcionais)](src/functions/test_parameters.dart)
   - [Funções Anônimas (lambdas) e Arrow Functions (`=>`)](src/functions/test_anonimous_functions.dart)
6. **Classes**
   - [Definição de Classe](src/classes/test_class_definition.dart) (`class`)
   - [Construtores e Instâncias de Objetos](src/classes/test_constructors_instance_objects.dart)
   - [Métodos e Variáveis de Instância](src/classes/test_methods_variables_instance.dart)
   - [Getters e Setters](src/classes/test_getters_setters.dart)
   - [Herança](src/classes/test_inheritance.dart) (`extends`)
   - [Classes Abstratas e Interfaces](src/classes/test_class_abstracts_interfaces.dart) (`abstract`, `implements`)
   - [Mixins](src/classes/test_mixins.dart) (`with`)
7. **Módulos e Pacotes**
   - [Bibliotecas e Visibilidade](src/modules/test_libraries.dart) (`import`, `show`, `hide`)
   - [Pacotes](src/modules/test_packages.dart) (gerenciados com pub.dev)
8. **Erros e Exceções**
   - [Tratando Exceções](src/exceptions/test_handle_exceptions.dart) (`throw`, `try-catch`)
9. **Arquivos**
   - [Lendo e Escrevendo em Arquivos](src/files/test_file_reading.dart) (usando `dart:io`)
     - `File('meu_arquivo.txt').writeAsStringSync('Olá, Dart!');`
10. **Adicional**
    - [Futures e Streams](src/additions/test_futures_streams.dart) (Programação Assíncrona)
    - Generators (`sync*`, `async*`) e `yield`
    - Algumas Bibliotecas Padrão
      - Tempo e Datas (`DateTime`, `Duration`)
      - Coleções (`dart:collection`)
      - Conversão (`dart:convert` para JSON, etc.)

## Pré-requisitos

**Instalando o SDK do Dart**

Certifique-se de ter o [SDK do Dart instalado](https://dart.dev/get-dart) em sua máquina.

Você pode ver a versão do Dart executando:

```bash
dart --version
```

**Instalando dependências**

Instale todas as dependências listadas no arquivo `pubspec.yaml` do projeto executando:

```bash
dart pub get
```

O comando `dart pub get` irá baixar todas as dependências listadas no arquivo `pubspec.yaml` do seu projeto, utilizando o [pub](https://pub.dev/) como gerenciador de pacotes.

## Testando o Código

Testes são feitos usando o pacote [test](https://pub.dev/packages/test), o framework de testes padrão em Dart.

Para executar todos os testes no projeto, execute o seguinte comando na pasta raiz:

```bash
dart test
```

Para executar testes de um arquivo específico, execute:

```bash
dart test path/para/seu_arquivo_test.dart
```

Para executar um teste específico pelo seu nome:

```bash
dart test --name "nome ou parte do nome do teste"
```
