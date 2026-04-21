import 'package:flutter_bloc_pattern/features/data/repositories/pokemon_repositories_impl.dart';
import 'package:flutter_bloc_pattern/features/domain/entities/pokemon_entity.dart';

abstract class PokemonRepositories {
  factory PokemonRepositories() => PokemonRepositoriesImpl();

  Future<List<String>> fetchPokemonUrls(int pokemon);
  Future<PokemonEntity?> fetchPokemonDetails(String pokemonUrl);
}
