class PokemonUrlsListModel {
  PokemonUrlsListModel({required this.urlList});

  factory PokemonUrlsListModel.fromJson(Map<String, dynamic> json) {
    final pokemonUrls = (json['results'] as List)
        .map((pokemon) => pokemon['url'].toString())
        .toList();

    return PokemonUrlsListModel(urlList: pokemonUrls);
  }
  final List<String> urlList;
}
