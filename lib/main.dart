import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/config/theme/app_theme.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/pokemon_list_bloc/pokemon_list_bloc.dart';
import 'package:flutter_bloc_pattern/features/presentation/pokemons/pokemons_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<PokemonListBloc>(
          create: (context) => PokemonListBloc()..add(const InitialFetch(50)),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLOC',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const PokemonsScreen(),
    );
  }
}
