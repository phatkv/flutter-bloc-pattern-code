import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_values.dart';

Widget PokemonCardImage(String pokeUrl) {
  return SizedBox(
    width: AppValues.pokemonImageSize,
    child: CachedNetworkImage(
      imageUrl: pokeUrl,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    ),
  );
}
