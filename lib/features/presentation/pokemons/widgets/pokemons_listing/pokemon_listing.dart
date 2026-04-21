import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/core/constants/app_spacing.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/pokemon_list_bloc/pokemon_list_bloc.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/widgets/pokemon_card/pokemon_card.dart';

import 'pokemon_listing_loading.dart';

class PokemonListing extends StatelessWidget {
  const PokemonListing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListBloc, PokemonListState>(
      builder: (context, state) {
        if (state is PokemonListSuccess) {
          return ListView.builder(
            cacheExtent: 350,
            itemCount: state.pokemons.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: index != 0 ? AppSpacing.md : 0),
                child: PokemonCard(
                  key: ValueKey(state.pokemons[index].id),
                  pokemon: state.pokemons[index],
                ),
              );
            },
          );
        } else if (state is PokemonListError) {
          return Center(child: Text(state.message));
        } else {
          return const PokemonListingLoading();
        }
      },
    );
  }
}
