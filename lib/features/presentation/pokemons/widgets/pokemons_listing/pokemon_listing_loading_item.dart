import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';
import 'package:flutter_bloc_pattern/core/constants/app_values.dart';
import 'package:flutter_bloc_pattern/core/widgets/shimmer/shimmer_widget.dart';

class PokemonListingLoadingItem extends StatelessWidget {
  const PokemonListingLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerWidget(
          width: AppValues.pokemonImageSize,
          height: AppValues.pokemonImageSize,
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShimmerWidget(
                width: double.infinity,
                height: AppValues.pokemonImageSize / 4,
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  ShimmerWidget(
                    width: AppValues.pokemonImageSize / 2,
                    height: AppValues.pokemonImageSize / 4,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  ShimmerWidget(
                    width: AppValues.pokemonImageSize / 2,
                    height: AppValues.pokemonImageSize / 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
