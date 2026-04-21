part of 'pokemon_list_bloc.dart';

sealed class PokemonListState extends Equatable {
  const PokemonListState();

  @override
  List<Object> get props => [];
}

final class PokemonListInitial extends PokemonListState {}

final class PokemonListLoading extends PokemonListState {}

final class PokemonListSuccess extends PokemonListState {
  const PokemonListSuccess({required this.pokemons});
  final List<PokemonEntity> pokemons;

  @override
  List<Object> get props => [pokemons];
}

final class PokemonListError extends PokemonListState {
  const PokemonListError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
