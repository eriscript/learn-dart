<img class="light-mode-visible" style="padding: 30px; width: 300px" src="https://dart.dev/assets/img/logo_lockup_dart_horizontal.png" alt="Logotipo do produto Dart">

---

Dart é uma linguagem otimizada para o cliente para o desenvolvimento de aplicativos rápidos em qualquer plataforma. Seu objetivo é oferecer a linguagem de programação mais produtiva para desenvolvimento multiplataforma, aliada a uma plataforma de execução flexível para frameworks de aplicativos.

As linguagens são definidas por seu envelope técnico — as escolhas feitas durante o desenvolvimento que moldam as capacidades e os pontos fortes de uma linguagem. O Dart foi projetado para um envelope técnico particularmente adequado ao desenvolvimento do cliente, priorizando tanto o desenvolvimento (recarregamento dinâmico com estado em menos de um segundo) quanto experiências de produção de alta qualidade em uma ampla variedade de alvos de compilação (web, dispositivos móveis e desktop).

O Dart também constitui a base do [Flutter](https://flutter.dev). Ele fornece a linguagem e os tempos de execução que alimentam os aplicativos do Flutter, mas também suporta muitas tarefas essenciais do desenvolvedor, como formatação, análise e teste de código.

## Dart: A linguagem

A linguagem Dart é segura em relação aos tipos; ela utiliza verificação de tipos estática para garantir que o valor de uma variável _sempre_ corresponda ao tipo estático da variável. Às vezes, isso é chamado de tipagem sonora. Embora os tipos sejam obrigatórios, as anotações de tipo são opcionais devido à inferência de tipos. O sistema de tipagem Dart também é flexível, permitindo o uso de um tipo `dynamic` combinado com verificações em tempo de execução, o que pode ser útil durante a experimentação ou para códigos que precisam ser especialmente dinâmicos.

O Dart possui segurança contra nulos integrada. Isso significa que valores não podem ser nulos, a menos que você diga que podem ser. Com a segurança contra nulos, o Dart pode proteger você de exceções de nulos em tempo de execução por meio de análise estática de código. Ao contrário de muitas outras linguagens seguras contra nulos, quando o Dart determina que uma variável não permite nulos, essa variável _nunca pode ser nula_. Se você inspecionar seu código em execução no depurador, verá que a não nulidade é mantida em tempo de execução; portanto, a segurança contra nulos _é válida_.

O exemplo de código a seguir apresenta diversos recursos da linguagem Dart, incluindo bibliotecas, chamadas assíncronas, tipos anuláveis ​​e não anuláveis, sintaxe de seta, geradores, fluxos e getters. Para saber mais sobre a linguagem, confira o [tour pela linguagem Dart](https://dart.dev/language).

```dart
import 'dart:math' show Random;

void main() async {
  print('Compute π using the Monte Carlo method.');
  await for (final estimate in computePi().take(100)) {
    print('π ≅ $estimate');
  }
}

/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch = 100000}) async* {
  var total = 0; // Inferred to be of type int
  var count = 0;
  while (true) {
    final points = generateRandom().take(batch);
    final inside = points.where((p) => p.isInsideUnitCircle);

    total += batch;
    count += inside.length;
    final ratio = count / total;

    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int? seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  bool get isInsideUnitCircle => x * x + y * y <= 1;
}
```

> **Observação**
> Este exemplo está sendo executado em um [DartPad](https://dartpad.dev/) incorporado. Você também pode [abrir este exemplo em uma janela própria](https://dartpad.dev/?id=bc63d212c3252e44058ff76f34ef5730).

## Dart: As bibliotecas

O Dart tem um rico conjunto de bibliotecas principais, fornecendo elementos essenciais para muitas tarefas de programação diárias:

- Tipos, coleções e outras funcionalidades principais integradas para cada programa Dart (`dart:core`)
- Tipos de coleção mais ricos, como filas, listas vinculadas, hashmaps e árvores binárias (`dart:collection`)
- Codificadores e decodificadores para conversão entre diferentes representações de dados, incluindo JSON e UTF-8 (`dart:convert`)
- Constantes e funções matemáticas e geração de números aleatórios (`dart:math`)
- Suporte para programação assíncrona, com classes como `Future` e `Stream` (`dart:async`)
- Listas que manipulam eficientemente dados de tamanho fixo (por exemplo, inteiros de 8 bytes sem sinal) e tipos numéricos SIMD (`dart:typed_data`)
- Suporte a arquivos, soquetes, HTTP e outras E/S para aplicativos não-web (`dart:io`)
- Interfaces de função estrangeira para interoperabilidade com outro código que apresenta uma interface de estilo C (`dart:ffi`)
- Programação concorrente usando _isolados_ — trabalhadores independentes que são semelhantes a threads, mas não compartilham memória, comunicando-se apenas por meio de mensagens (`dart:isolate`)
- Elementos HTML e outros recursos para aplicativos baseados na web que precisam interagir com o navegador e o Document Object Model (DOM) (`dart:js_interop` e o pacote `package:web`)

Além das bibliotecas principais, muitas APIs são fornecidas por meio de um conjunto abrangente de pacotes. A equipe do Dart publica muitos pacotes suplementares úteis, como estes:

- [characters](https://pub.dev/packages/characters)
- [intl](https://pub.dev/packages/intl)
- [http](https://pub.dev/packages/http)
- [crypto](https://pub.dev/packages/crypto)
- [markdown](https://pub.dev/packages/markdown)

Além disso, editores terceirizados e a comunidade em geral publicam milhares de pacotes, com suporte para recursos como estes:

- [XML](https://pub.dev/packages/xml)
- [Integração do Windows](https://pub.dev/packages/win32)
- [SQLite](https://pub.dev/packages/sqflite_common)
- [Compressão](https://pub.dev/packages/archive)

Para ver uma série de exemplos práticos com as bibliotecas principais do Dart, leia a [documentação da biblioteca principal](https://dart.dev/libraries). Para encontrar APIs adicionais, consulte a [página de pacotes comumente usados](https://dart.dev/guides/packages).

## Dart: As plataformas

A tecnologia do compilador Dart permite que você execute código de diferentes maneiras:

- **Plataforma nativa**: para aplicativos direcionados a dispositivos móveis e de desktop, o Dart inclui uma VM Dart com compilação just-in-time (JIT) e um compilador ahead of time (AOT) para produzir código de máquina.
- **Plataforma web**: Para aplicativos voltados para a web, o Dart pode ser compilado para fins de desenvolvimento ou produção. Seus compiladores web traduzem o Dart para JavaScript ou WebAssembly.

<img src="https://dart.dev/assets/img/Dart-platforms.svg" width="800">

O [framework Flutter](https://flutter.dev) é um kit de ferramentas de interface de usuário popular e multiplataforma que é alimentado pela plataforma Dart e que fornece ferramentas e bibliotecas de interface de usuário para criar experiências de interface de usuário que rodam em iOS, Android, macOS, Windows, Linux e na web.

### Dart Native (código de máquina JIT e AOT)

Durante o desenvolvimento, um ciclo rápido de desenvolvimento é essencial para a iteração. A VM Dart oferece um compilador just-in-time (JIT) com recompilação incremental (permitindo recarga a quente), coleções de métricas em tempo real (impulsionando o [DevTools](https://dart.dev/tools/devtools)) e amplo suporte à depuração.

Quando os aplicativos estão prontos para serem implantados em produção — seja publicando em uma loja de aplicativos ou implantando em um backend de produção — o compilador Dart ahead-of-time (AOT) pode compilar para código de máquina ARM nativo ou x64. Seu aplicativo compilado em AOT inicia com um tempo de inicialização curto e consistente.

O código compilado pelo AOT é executado dentro de um tempo de execução Dart eficiente que aplica o sistema de tipos Dart e gerencia a memória usando alocação rápida de objetos e um [coletor de lixo geracional](https://dart.dev/language/memory-management).

**Mais informações:**

- [Introdução: aplicativos de linha de comando e servidor](https://dart.dev/tutorials/server/get-started)
- [`dart` ferramenta](https://dart.dev/tools/dart-tool) para execução com compilação JIT ou AOT para código de máquina
- [Escreva aplicativos de linha de comando](https://dart.dev/tutorials/server/cmdline)
- [Escrever servidores HTTP](https://dart.dev/tutorials/server/httpserver)

### Dart Web (desenvolvimento e produção de JavaScript e WebAssembly)

O Dart Web permite a execução de código Dart em plataformas web com JavaScript. Com o Dart Web, você compila o código Dart em código JavaScript, que por sua vez é executado em um navegador — por exemplo, o V8 dentro do Chrome. Como alternativa, o código Dart pode ser compilado no WebAssembly.

O Dart Web contém três modos de compilação:

- Um compilador de desenvolvimento JavaScript incremental que permite um ciclo rápido de desenvolvimento.
- Um compilador otimizador de produção JavaScript que compila código Dart para JavaScript rápido, compacto e implantável. Essas eficiências advêm de técnicas como a eliminação de código morto.
- Um compilador de produção WebAssembly (WasmGC) otimizador que compila código Dart em código WebAssembly GC super-rápido e implantável.

**Mais informações:**

- [Crie um aplicativo web com Dart](https://dart.dev/web)
- [`dart compile js`](https://dart.dev/tools/dart-compile#js)
- [`webdev` ferramenta](https://dart.dev/tools/webdev)
- [Dicas de implantação na Web](https://dart.dev/web/deployment)
- [Compilação do WebAssembly](https://dart.dev/web/wasm)

### O tempo de execução do Dart

Independentemente da plataforma que você usa ou de como compila seu código, a execução do código requer um runtime Dart. Este runtime é responsável pelas seguintes tarefas críticas:

- **Gerenciando memória**: O Dart usa um modelo de memória gerenciada, em que a memória não utilizada é recuperada por um coletor de lixo (GC).
- **Aplicando o sistema de tipos Dart**: Embora a maioria das verificações de tipo em Dart sejam estáticas (tempo de compilação), algumas verificações de tipo são dinâmicas (tempo de execução). Por exemplo, o tempo de execução do Dart aplica verificações dinâmicas por meio de [operadores de verificação de tipo e conversão](https://dart.dev/language/operators#type-test-operators).
- **Gerenciando _isolados_**: o tempo de execução do Dart controla o isolado principal (onde o código normalmente é executado) e quaisquer outros isolados que o aplicativo cria.

Em plataformas nativas, o tempo de execução do Dart é incluído automaticamente dentro de executáveis autocontidos e faz parte da VM Dart fornecida pelo comando `dart run`.

## Aprendendo Dart

Você tem muitas opções para aprender Dart. Aqui estão algumas que recomendamos:

- Explore o Dart no navegador através do [DartPad](https://dartpad.dev), um ambiente de execução baseado na web para código Dart.
- Faça um [tour pela linguagem Dart](https://dart.dev/language), que mostra como usar cada um dos principais recursos do Dart.
- Conclua um [tutorial do Dart](https://dart.dev/tutorials) que aborda os conceitos básicos do uso do Dart para criar para a linha de comando.
- Faça um amplo [treinamento on-line](https://dart.dev/community/learning#online-training) com especialistas da Dart.
- Explore a [documentação da API](https://api.dart.dev/) que descreve as bibliotecas principais do Dart.
- Leia um [livro sobre programação Dart](https://dart.dev/community/learning#books).
