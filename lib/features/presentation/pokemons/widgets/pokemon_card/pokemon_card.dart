import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_decoration.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';
import 'package:flutter_bloc_pattern/core/utils/extensions/text_capitalize.dart';
import 'package:flutter_bloc_pattern/features/domain/entities/pokemon_entity.dart';

import 'pokemon_card_favorite_icon.dart';
import 'pokemon_card_image.dart';
import 'pokemon_card_types.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({required this.pokemon, super.key});
  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.cardPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: AppDecoration.cardBorderWidth,
        ),
        borderRadius: AppDecoration.cardBorderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PokemonCardImage(pokemon.image),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pokemon.name.capitalize(),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        PokemonCardTypes(pokeTypes: pokemon.types),
                      ],
                    ),
                    PokemonCardFavoriteIcon(
                      isFavorite: pokemon.isFavorite,
                      pokeId: pokemon.id,
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    pokemon.id.intoId(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
