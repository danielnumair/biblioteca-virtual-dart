import 'dart:io';
import 'biblioteca/biblioteca.dart';

/// Função principal do programa.
/// Exibe um menu interativo para o usuário gerenciar a biblioteca virtual.
void main() {
  Biblioteca biblioteca = Biblioteca();
  int? opcao;

  do {
    print('\n==== Biblioteca Virtual ====');
    print('1. Cadastrar livro');
    print('2. Remover livro por título');
    print('3. Listar livros');
    print('0. Sair');
    stdout.write('Escolha uma opção: ');
    opcao = int.tryParse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        biblioteca.cadastrarLivro();
        break;
      case 2:
        stdout.write('Digite o título do livro para remover: ');
        String titulo = stdin.readLineSync()!;
        biblioteca.removerLivroPorTitulo(titulo);
        break;
      case 3:
        biblioteca.listarLivros();
        break;
      case 0:
        print('Saindo...');
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}
