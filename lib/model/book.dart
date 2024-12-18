class Book {
  final String isbn;
  final String title;
  final String author;
  final String country;
  final String imageUrl;
  final String description;
  final double rating;
  final int year;
  final int pagesNumber;

  Book({
    required this.isbn,
    required this.title,
    required this.author,
    required this.country,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.year,
    required this.pagesNumber,
});
}

final bookList = [
  Book(
    isbn : '9783127',
    title : 'O Alienista',
    author: 'Machado de Assis',
    country: 'Brasil',
    imageUrl : 'https://m.media-amazon.com/images/I/91bNoLbzfXL._AC_UF1000,1000_QL80_.jpg',
    description : 'Com quantos doidos se faz uma cidadezinha? É o que está prestes a investigar o'
        'ilustre Dr. Simão Bacamarte, renomado médico com estudos no exterior, que funda na vila'
        'de Itaguaí a Casa Verde, instituto onde pretende estudar e tratar todos os que sofrem de'
        'transtornos mentais. Todo tipo de gente é enviado aos cuidados do doutor, que passa também '
        'a enxergar em seus vizinhos e conhecidos o perigoso traço da loucura.',
    rating : 4.7,
    year : 1882,
    pagesNumber : 96
  ),
  Book(
      isbn : '9856312',
      title: 'Orgulho e Preconceito',
      author: 'Jane Austen',
      country: 'Reino Unido',
      imageUrl: 'https://acdn.mitiendanube.com/stores/001/120/042/products/capa_orgulho_preconceito1-ce737aa4db2e59b27a15846436459783-640-0.jpg',
      description: 'Em Orgulho e preconceito, Jane Austen nos apresenta os Bennets: uma família nobre, porém'
          'sem dinheiro, composta pelo pai, pela mãe e por cinco moças, todas em idade de se casar e nenhuma'
          'com direito a herdar a propriedade da família. Para assegurar o futuro delas, é preciso encontrar '
          'pretendentes de boa posição – uma busca que atormenta a senhora Bennet e, consequentemente, '
          'a família toda.',
      rating: 4.8,
      year: 1813,
      pagesNumber: 320
  ),
  Book(
      isbn : '9657390',
      title: 'Os Irmãos Karamázov',
      author: 'Fiódor Dostoiévski',
      country: 'Rússia',
      imageUrl: 'https://www.presenca.pt/cdn/shop/files/image-1_ebe8fc9d-67a3-4191-981c-4439084750e0_1024x1024.jpg?v=1706748200',
      description: 'Em Os Irmãos Karamázov, considerado por muitos sua obra-prima, Dostoiévski conduz o leitor em '
          'uma viagem pelos recantos mais sombrios e mais luminosos da alma humana, com passagens inesquecíveis - '
          'como a parábola do Grande Inquisidor e os questionamentos radicais de Ivan Karamázov sobre a moral e o'
          'livre-arbítrio - que marcaram decisivamente não só a literatura, mas a própria história do pensamento '
          'ocidental.',
      rating: 4.9,
      year: 1880,
      pagesNumber: 911
  ),
  Book(
      isbn : '9689125',
      title: 'O Primo Basílio',
      author: 'Eça de Queiroz',
      country: 'Portugal',
      imageUrl: 'https://m.media-amazon.com/images/I/61-eRZxJ6gL._AC_UF1000,1000_QL80_.jpg',
      description: 'Durante uma viagem prolongada de seu marido, Luísa se deixa seduzir por Basílio, um primo'
          'seu que voltava a Portugal depois de uma temporada no Brasil. Imprudentes e indiscretos, os amantes '
          'acabam flagrados por Juliana, a empregada da casa, que passa a chantagear a patroa. Com o anúncio da '
          'iminente volta do marido, está armado o cenário para um caso exemplar de decadência do estilo de vida '
          'pequeno-burguês, com seus preconceitos e moralismos, seus tipos parasitários, suas relações amesquinhadas '
          'e seu frágil equilíbrio.',
      rating: 4.7,
      year: 1878,
      pagesNumber: 384
  ),
  Book(
      isbn : '9657390',
      title: 'Madame Bovary',
      author: 'Gustave Flaubert',
      country: 'França',
      imageUrl: 'https://biblioteca.letras.ufrj.br/wp-content/uploads/2023/10/image-23.png',
      description: 'Emma Bovary é uma leitora ávida. Criada no campo e educada em um convento, nutre sonhos ambiciosos,'
          ' inspirados pela burguesia e romance dos livros. Decidida a buscar novos horizontes, se casa com Charles, '
          'um médico interiorano apaixonado pela esposa, mas carecido de ambições. O casal acaba se mudando para outra '
          'província, a nova rotina não atinge as expectativas de Emma, tornando-a cada dia mais infeliz e a passividade '
          'do marido a entedia. Desejando aventuras requintadas, ela começa a procurar sua satisfação em outras personalidades.',
      rating: 4.7,
      year: 1856,
      pagesNumber: 336
  )
];