import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/widgets/pokemon_image_header.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/widgets/pokemons_listing/pokemon_listing.dart';

class PokemonsScreen extends StatelessWidget {
  const PokemonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PokemonImageHeader(),
              SizedBox(height: AppSpacing.lg),
              Expanded(child: PokemonListing()),
            ],
          ),
        ),
      ),
    );
  }
}
