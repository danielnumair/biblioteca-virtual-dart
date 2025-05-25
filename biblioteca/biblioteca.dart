import 'dart:io';
import 'livro.dart';

/// Classe responsável por gerenciar uma coleção de livros.
class Biblioteca {
  /// Lista interna que armazena todos os livros cadastrados.
  final List<Livro> _livros = [];

  /// Cadastra um novo livro na biblioteca solicitando os dados via terminal.
  void cadastrarLivro() {
    print('--- Cadastro de Livro ---');
    stdout.write('Título: ');
    String titulo = stdin.readLineSync()!;

    stdout.write('Descrição: ');
    String descricao = stdin.readLineSync()!;

    stdout.write('Nome do autor: ');
    String nomeAutor = stdin.readLineSync()!;
    stdout.write('Email do autor: ');
    String emailAutor = stdin.readLineSync()!;
    Autor autor = Autor(nome: nomeAutor, email: emailAutor);

    stdout.write('Ano de publicação: ');
    int ano = int.parse(stdin.readLineSync()!);

    stdout.write('Gênero: ');
    String genero = stdin.readLineSync()!;

    stdout.write('Valor: ');
    double valor = double.parse(stdin.readLineSync()!);

    stdout.write('ISBN: ');
    String isbn = stdin.readLineSync()!;

    Livro livro = Livro(
      titulo: titulo,
      descricao: descricao,
      autor: autor,
      anoPublicacao: ano,
      genero: genero,
      valor: valor,
      isbn: isbn,
    );

    _livros.add(livro);
    print('Livro cadastrado com sucesso!');
  }

  /// Remove um livro da biblioteca com base no título informado.
  void removerLivroPorTitulo(String titulo) {
    _livros.removeWhere(
      (livro) => livro.titulo.toLowerCase() == titulo.toLowerCase(),
    );
    print('Livro removido (se encontrado).');
  }

  /// Lista todos os livros cadastrados na biblioteca.
  void listarLivros() {
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado.');
    } else {
      print('--- Lista de Livros ---');
      for (var livro in _livros) {
        livro.mostrarDetalhes();
      }
    }
  }
}
