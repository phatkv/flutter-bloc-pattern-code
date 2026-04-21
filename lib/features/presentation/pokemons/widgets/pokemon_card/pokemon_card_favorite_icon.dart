import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/config/theme/colors.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/pokemon_list_bloc/pokemon_list_bloc.dart';

class PokemonCardFavoriteIcon extends StatelessWidget {
  const PokemonCardFavoriteIcon({
    required this.isFavorite,
    required this.pokeId,
    super.key,
  });
  final bool isFavorite;
  final String pokeId;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return GestureDetector(
      onTap: () {
        context.read<PokemonListBloc>().add(ToggleFavoriteStatus(pokeId));
      },
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite
            ? appColors.favoriteActive
            : appColors.favoriteInactive,
      ),
    );
  }
}
