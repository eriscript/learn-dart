# Sintaxe Básica do Dart

Este arquivo é um guia de referência rápida para a sintaxe fundamental da linguagem de programação Dart. Ele cobre desde a declaração de variáveis até a estrutura de funções e classes.

## 1. O Ponto de Entrada: A Função `main()`

Todo programa Dart executável precisa de uma função `main()` de nível superior, que é o ponto de partida da execução.

```dart
void main() {
  print('Olá, Mundo!'); // A função print() exibe informações no console.
}
```

## 2. Comentários

Comentários são usados para documentar o código e são ignorados pelo compilador.

```dart
// Este é um comentário de uma linha.

/*
  Este é um comentário
  de múltiplas linhas.
*/

/// Este é um comentário de documentação.
/// Usado para gerar documentação para funções, classes, etc.
void minhaFuncao() {
  // ...
}
```

## 3. Variáveis e Tipos

Dart é uma linguagem com tipagem estática, mas o uso de anotações de tipo é flexível graças à inferência.

### Declaração de Variáveis

```dart
// Declaração com tipo explícito
String nome = 'Dart';
int versao = 3;
double preco = 150.75;
bool éLegal = true;

// Inferência de tipo com 'var'
var linguagem = 'Dart'; // O compilador infere que é uma String
var ano = 2024;       // Infere que é um int

// Variáveis que não mudam de valor após a inicialização
final String framework = 'Flutter'; // Valor definido em tempo de execução
const double PI = 3.14159;          // Valor definido em tempo de compilação
```

### Segurança Contra Nulos (Null Safety)

Dart é "null-safe", o que significa que uma variável não pode conter `null`, a menos que você permita explicitamente.

```dart
String nomeNaoNulo = 'Ana';
// nomeNaoNulo = null; // Erro de compilação!

String? nomeAnulavel = 'Beto'; // O '?' permite que a variável seja nula.
nomeAnulavel = null; // Válido.

// Para usar uma variável anulável, é preciso tratar a possibilidade de ser nula.
print(nomeAnulavel?.length); // Operador '?' para acesso seguro.
```

## 4. Strings

A interpolação de strings é uma forma fácil de incluir valores de variáveis dentro de uma string.

```dart
String nome = 'Usuário';
int idade = 25;

// Interpolação com $ e ${}
String saudacao = 'Olá, $nome! Você tem $idade anos.';
String calculo = 'Daqui a 5 anos, você terá ${idade + 5} anos.';

print(saudacao);
print(calculo);

// Strings de múltiplas linhas
String poema = '''
Este é um poema
escrito em várias
linhas em Dart.
''';
```

## 5. Coleções (Collections)

As coleções mais comuns são Listas, Mapas e Conjuntos.

```dart
// List (Lista ordenada de itens)
var frutas = ['Maçã', 'Banana', 'Laranja'];
frutas.add('Morango');
print(frutas[0]); // Acessa o primeiro item: 'Maçã'

// Set (Coleção de itens únicos e desordenados)
var linguagens = {'Dart', 'Java', 'Python'};
linguagens.add('Dart'); // Não terá efeito, pois 'Dart' já existe.
print(linguagens);

// Map (Coleção de pares chave-valor)
var pontuacoes = {
  'jogador1': 100,
  'jogador2': 85,
};
pontuacoes['jogador3'] = 120;
print(pontuacoes['jogador1']); // Acessa o valor da chave: 100
```

## 6. Controle de Fluxo

Estruturas para tomar decisões e repetir ações.

```dart
// if-else
int idade = 18;
if (idade >= 18) {
  print('Maior de idade.');
} else {
  print('Menor de idade.');
}

// for loop
for (int i = 1; i <= 3; i++) {
  print('Contagem: $i');
}

// for-in loop (para iterar sobre coleções)
var frutas = ['Maçã', 'Banana'];
for (var fruta in frutas) {
  print('Eu gosto de $fruta');
}

// switch
var comando = 'ABRIR';
switch (comando) {
  case 'ABRIR':
    print('Abrindo...');
    break;
  case 'FECHAR':
    print('Fechando...');
    break;
  default:
    print('Comando não reconhecido.');
}
```

## 7. Funções

Funções são blocos de código reutilizáveis.

```dart
// Função sem retorno e sem parâmetros
void saudar() {
  print('Bem-vindo!');
}

// Função com retorno e parâmetros
int somar(int a, int b) {
  return a + b;
}

// Sintaxe de seta (Arrow Syntax) para funções de uma linha
int subtrair(int a, int b) => a - b;

// Parâmetros nomeados (ótimos para clareza)
void configurar({String? tema, int? fonte}) {
  print('Tema: $tema, Fonte: $fonte');
}

// Chamando a função
saudar();
var resultado = somar(5, 3); // resultado = 8
configurar(tema: 'Escuro', fonte: 16);
```

## 8. Classes (Introdução Básica)

Classes são os modelos para criar objetos.

```dart
class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  // Método
  void apresentar() {
    print('Meu nome é $nome e eu tenho $idade anos.');
  }
}

void main() {
  // Criando um objeto (instância da classe)
  var pessoa1 = Pessoa('Carlos', 30);
  pessoa1.apresentar(); // Chama o método do objeto
}
```
