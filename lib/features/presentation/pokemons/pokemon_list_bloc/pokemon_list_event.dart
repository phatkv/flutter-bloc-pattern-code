part of 'pokemon_list_bloc.dart';

sealed class PokemonListEvent extends Equatable {
  const PokemonListEvent();

  @override
  List<Object> get props => [];
}

class InitialFetch extends PokemonListEvent {
  const InitialFetch(this.firstPokemon);
  final int firstPokemon;
}

class ToggleFavoriteStatus extends PokemonListEvent {
  const ToggleFavoriteStatus(this.pokemonId);
  final String pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
