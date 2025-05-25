/// Representa o autor de um livro.
class Autor {
  /// Nome do autor
  String nome;

  /// Email do autor.
  String email;

  /// Construtor da classe Autor.
  Autor({required this.nome, required this.email});
}

/// Representa um livro na biblioteca.
class Livro {
  /// Título do livro.
  String titulo;

  /// Descrição resumida sobre o livro.
  String descricao;

  /// Autor do livro (objeto do tipo Autor).
  Autor autor;

  /// Ano de publicação do livro.
  int anoPublicacao;

  /// Gênero do livro (ex: Romance, Fantasia, Técnico).
  String genero;

  /// Preço do livro.
  double valor;

  /// Código ISBN do livro.
  String isbn;

  /// Construtor da classe Livro.
  Livro({
    required this.titulo,
    required this.descricao,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
    required this.valor,
    required this.isbn,
  });

  /// Exibe os detalhes do livro no console.
  void mostrarDetalhes() {
    print('Título: $titulo');
    print('Descrição: $descricao');
    print('Autor: ${autor.nome}');
    print('Email do autor: ${autor.email}');
    print('Ano: $anoPublicacao');
    print('Gênero: $genero');
    print('ISBN: $isbn');
    print('Valor: R\$ ${valor.toStringAsFixed(2)}');
    print('--------------------------');
  }
}
