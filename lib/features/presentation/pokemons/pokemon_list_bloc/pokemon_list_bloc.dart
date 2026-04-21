import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_pattern/features/domain/entities/pokemon_entity.dart';
import 'package:flutter_bloc_pattern/features/domain/repositories/pokemon_repositories.dart';

part 'pokemon_list_event.dart';
part 'pokemon_list_state.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  PokemonListBloc() : super(PokemonListInitial()) {
    on<InitialFetch>(_onInitialPokemonFetch);
    on<ToggleFavoriteStatus>(_onToggleFavoriteStatus);
  }

  final List<PokemonEntity> pokemonList = [];

  Future<void> _onInitialPokemonFetch(
    InitialFetch event,
    Emitter<PokemonListState> emit,
  ) async {
    emit(PokemonListLoading());
    try {
      final pokemonUrls = await PokemonRepositories().fetchPokemonUrls(
        event.firstPokemon,
      );
      if (pokemonUrls.isNotEmpty) {
        final fetchedPokemons = await Future.wait(
          pokemonUrls.map(
            (pokemonUrl) =>
                PokemonRepositories().fetchPokemonDetails(pokemonUrl),
          ),
        );
        pokemonList.addAll(fetchedPokemons.whereType<PokemonEntity>());
        emit(PokemonListSuccess(pokemons: pokemonList));
      } else {
        emit(const PokemonListError(message: 'There are no more pokemons'));
      }
    } catch (e) {
      emit(PokemonListError(message: e.toString()));
    }
  }

  void _onToggleFavoriteStatus(
    ToggleFavoriteStatus event,
    Emitter<PokemonListState> emit,
  ) {
    if (state is PokemonListSuccess) {
      final currentState = state as PokemonListSuccess;

      final updatedList = currentState.pokemons.map((pokemon) {
        if (pokemon.id == event.pokemonId) {
          return pokemon.copyWith(isFavorite: !pokemon.isFavorite);
        }
        return pokemon;
      }).toList();

      emit(PokemonListSuccess(pokemons: updatedList));
    }
  }
}
