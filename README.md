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
   - [Variáveis](src/getting_started/variables_test.dart)
2. **Operadores**
   - [Operadores Aritméticos](src/operators/arithmetic_test.dart) (`+`, `-`, `*`, `/`, `~/`, `%`)
   - [Operadores Bitwise](src/operators/bitwise_test.dart) (`&`, `|`, `^`, `>>`, `<<`, `>>>`, `~`)
   - [Operadores de Atribuição](src/operators/assigment_test.dart) (`=`, `+=`, `??=`, `-=`, `*=`, `/=` etc.)
   - [Operadores de Relacionais](src/operators/relation_test.dart) (`==`, `!=`, `>`, `<`, `>=`, `<=`)
   - [Operadores Lógicos](src/operators/logical_test.dart) (`&&`, `||`, `!`)
3. **Tipos de Dados**
   - [int](src/data_types/int_test.dart)
   - [double](src/data_types/double_test.dart)
   - [num](src/data_types/num_test.dart)
   - [String](src/data_types/string_test.dart)
   - [bool](src/data_types/bool_test.dart)
   - [List](src/data_types/list_test.dart) (Listas)
   - [Set](src/data_types/set_test.dart) (Conjuntos)
   - [Map](src/data_types/map_test.dart) (Mapas)
   - [dynamic e Object](src/data_types/dynamic_object_test.dart)
4. **Controles de Fluxo**
   - [A declaração `if-else`](src/control_flow/if_else_test.dart)
   - [O laço `for` (incluindo `for-in`)](src/control_flow/for_for_in_test.dart)
   - [O laço `while` e `do-while`](src/control_flow/while_do_while_test.dart)
   - [A declaração `switch`](src/control_flow/switch_test.dart)
   - [As declarações `break` e `continue`](src/control_flow/break_continue_test.dart)
   - [A declaração `try-catch-finally` para tratamento de exceções](src/control_flow/try_catch_finally_test.dart)
   - [A declaração `return`](src/control_flow/return_test.dart)
   - [Programação Assíncrona (`async/await`)](src/control_flow/async_await_test.dart)
5. **Funções**
   - [Declaração de Funções](src/functions/functions_test.dart)
   - [Parâmetros (posicionais, nomeados, opcionais)](src/functions/parameters_test.dart)
   - [Funções Anônimas (lambdas) e Arrow Functions (`=>`)](src/functions/anonimous_functions_test.dart)
6. **Classes**
   - [Definição de Classe](src/classes/class_definition_test.dart) (`class`)
   - [Construtores e Instâncias de Objetos](src/classes/constructors_instance_objects_test.dart)
   - [Métodos e Variáveis de Instância](src/classes/methods_variables_instance_test.dart)
   - [Getters e Setters](src/classes/getters_setters_test.dart)
   - [Herança](src/classes/inheritance_test.dart) (`extends`)
   - [Classes Abstratas e Interfaces](src/classes/class_abstracts_interfaces_test.dart) (`abstract`, `implements`)
   - [Mixins](src/classes/mixins_test.dart) (`with`)
7. **Módulos e Pacotes**
   - [Bibliotecas e Visibilidade](src/modules/libraries_test.dart) (`import`, `show`, `hide`)
   - [Pacotes](src/modules/packages_test.dart) (gerenciados com pub.dev)
8. **Erros e Exceções**
   - [Tratando Exceções](src/exceptions/handle_exceptions_test.dart) (`throw`, `try-catch`)
9. **Arquivos**
   - [Lendo e Escrevendo em Arquivos](src/files/file_reading_test.dart) (usando `dart:io`)
     - `File('meu_arquivo.txt').writeAsStringSync('Olá, Dart!');`
10. **Adicional**
    - [Futures e Streams](src/additions/futures_streams_test.dart) (Programação Assíncrona)
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
