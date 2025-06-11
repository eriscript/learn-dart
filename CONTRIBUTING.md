# Como Contribuir com o Repositório Learn Dart

Ficamos muito felizes com seu interesse em contribuir! Toda ajuda é bem-vinda, seja corrigindo um erro de digitação, melhorando um exemplo ou adicionando um tópico completamente novo.

Este documento é um guia para ajudar você a fazer sua contribuição da melhor forma possível.

## Código de Conduta

Para garantir que nossa comunidade seja aberta e inclusiva, adotamos um Código de Conduta. Esperamos que todos os contribuidores o sigam. Por favor, leia o nosso **[Código de Conduta](CODE_OF_CONDUCT.md)** antes de participar.

## Como Posso Ajudar?

Existem várias formas de contribuir para este projeto educacional:

- **🐛 Corrigir Bugs:** Encontrou um erro em algum exemplo? O código não funciona como descrito? Abra uma issue ou, melhor ainda, envie um Pull Request com a correção!
- **📄 Melhorar a Documentação:** Viu um erro de digitação, uma explicação confusa ou um link quebrado? Sugira uma melhoria.
- **✨ Adicionar Novos Exemplos:** Quer adicionar um exemplo para um tópico que já existe? Ótimo!
- **⭐ Criar um Novo Tópico:** Tem uma ideia para um novo tópico que ainda não cobrimos? Sugerimos [abrir uma issue](https://github.com/eriscript/learn-dart/issues/new/choose) primeiro para discutirmos a ideia.

## Guia para Fazer sua Contribuição

Se você nunca contribuiu para um projeto no GitHub antes, não se preocupe! Aqui está um passo a passo.

**1. Faça o Fork e Clone do Repositório**

- **Fork:** Clique no botão "Fork" no canto superior direito desta página. Isso criará uma cópia do nosso repositório na sua conta do GitHub.
- **Clone:** Agora, clone o _seu fork_ para a sua máquina local:
  ```sh
  git clone [https://github.com/eriscript/learn-dart.git](https://github.com/eriscript/learn-dart.git)
  cd learn-dart
  ```

**2. Crie uma Nova Branch**

Crie uma branch específica para sua alteração. Use um nome descritivo, como `fix/correcao-exemplo-lista` ou `feature/adiciona-exemplo-streams`.

```sh
git checkout -b nome-da-sua-branch
```

**3. Faça Suas Alterações**

Agora é a hora de codificar! Adicione seu novo exemplo, corrija o bug ou melhore a documentação.

**4. Garanta a Qualidade do Código**

Antes de enviar sua contribuição, por favor, execute os seguintes comandos na raiz do projeto para garantir que tudo está no padrão:

- **Instale as dependências:**

  ```bash
  dart pub get
  ```

- **Formate seu código:**

  ```bash
  dart format .
  ```

- **Verifique a análise estática (sem erros ou warnings):**

  ```bash
  dart analyze
  ```

- Execute os testes (se houver):

  ```bash
  dart test
  ```

**5. Faça o Commit das Suas Alterações**

Escreva uma mensagem de commit clara e concisa. Nós seguimos o padrão de [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

- **Exemplos de mensagens de commit:**

  ```
  feat: Adiciona exemplo de Streams com broadcast
  fix: Corrige lógica de ordenação no tópico de listas
  docs: Melhora explicação sobre null safety
  ```

- **Comando:**

  ```bash
  git commit -m "feat: Sua mensagem descritiva"
  ```

**6. Envie suas Alterações (Push)**

Envie a sua branch para o seu fork no GitHub:

```bash
git push origin nome-da-sua-branch
```

**7. Abra um Pull Request (PR)**

Volte para a página do seu fork no GitHub. Você verá um botão para "Compare & pull request". Clique nele.

- Escreva um título claro para o seu PR.
- Na descrição, explique o que você fez e por quê. Se seu PR resolve uma issue existente, mencione o número dela (ex: `Resolve #42`).

**O Que Acontece Depois?**

Após você abrir um Pull Request, um dos mantenedores do projeto irá revisá-lo. Podemos fazer perguntas, pedir algumas alterações ou aprovar e mesclar sua contribuição diretamente.

Agradecemos muito por sua ajuda e por dedicar seu tempo para melhorar este projeto!
