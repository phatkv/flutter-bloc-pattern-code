import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';

import 'pokemon_listing_loading_item.dart';

class PokemonListingLoading extends StatelessWidget {
  const PokemonListingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: index != 0 ? AppSpacing.lg : 0),
          child: const PokemonListingLoadingItem(),
        );
      },
    );
  }
}
