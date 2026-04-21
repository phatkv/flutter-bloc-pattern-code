import 'dart:convert';

import 'package:flutter_bloc_pattern/core/constants/api/api_constants.dart';
import 'package:flutter_bloc_pattern/features/data/models/pokemon_model.dart';
import 'package:flutter_bloc_pattern/features/data/models/pokemon_urls_list_model.dart';
import 'package:flutter_bloc_pattern/features/domain/entities/pokemon_entity.dart';
import 'package:flutter_bloc_pattern/features/domain/repositories/pokemon_repositories.dart';
import 'package:http/http.dart' as http;

class PokemonRepositoriesImpl implements PokemonRepositories {
  @override
  Future<List<String>> fetchPokemonUrls(int pokemon) async {
    final PokemonUrlsListModel pokemonUrls;
    try {
      final url = Uri.parse(
        '${ApiConstants.pokemonList}?limit=$pokemon&offset=0',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        pokemonUrls = PokemonUrlsListModel.fromJson(data);

        return pokemonUrls.urlList;
      }

      return [];
    } catch (e) {
      throw Exception('Unable to load pokemon urls: $e');
    }
  }

  @override
  Future<PokemonEntity?> fetchPokemonDetails(String pokemonUrl) async {
    try {
      final url = Uri.parse(pokemonUrl);
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        return PokemonModel.fromJson(data);
      }

      return null;
    } catch (e) {
      throw Exception('Unable to load pokemon details: $e');
    }
  }
}
