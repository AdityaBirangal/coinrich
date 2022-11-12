import 'package:coinrich/services/crypto_api_repository.dart';
import 'package:coinrich/cubit/home_screen_cubit.dart';
import 'package:coinrich/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinRich',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF746F6F),
          appBarTheme: const AppBarTheme(color: Colors.black)
      ),
      home: BlocProvider(
        create: (context) => HomeScreenCubit(CryptoApiRepository())..getCryptoData(),
        child: const HomeScreen(),
      ),
    );
  }
}