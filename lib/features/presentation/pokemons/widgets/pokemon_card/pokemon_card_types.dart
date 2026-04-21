import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_decoration.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';
import 'package:flutter_bloc_pattern/features/data/models/pokemon_type_model.dart';

class PokemonCardTypes extends StatelessWidget {
  const PokemonCardTypes({required this.pokeTypes, super.key});
  final List<PokemonType> pokeTypes;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: List.generate(pokeTypes.length, (index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.typesCardPadding,
            vertical: AppSpacing.typesCardPadding / 3,
          ),
          decoration: BoxDecoration(
            color: pokeTypes[index].color,
            borderRadius: AppDecoration.pokeTypesBorderRadius,
          ),
          child: Text(
            pokeTypes[index].name.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        );
      }),
    );
  }
}
