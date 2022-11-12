import 'package:coinrich/cubit/home_screen_cubit.dart';
import 'package:coinrich/models/crypto_data.dart';
import 'package:coinrich/widgets/crypto_card.dart';
import 'package:coinrich/widgets/showchart_and_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('CoinRich')],
      )),
      body: BlocConsumer<HomeScreenCubit,HomeScreenState>(
          builder: (context, state) {
            if(state is HomeScreenInitial){
              return buildInitial();
            }else if (state is HomeScreenLoading){
              return buildLoading();
            }else if (state is HomeScreenLoaded){
              return buildLoaded(state.cryptoData);
            }else {
              return buildInitial();
            }
          },
          listener: (context, state) {
            if (state is HomeScreenError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
      )
    );
  }
}

Widget buildInitial(){
  return const Center(child: Text('buildInitial'));
}

Widget buildLoading(){
  return const Center(
    child: CircularProgressIndicator(color: Colors.yellow));
}

Widget buildLoaded(CryptoData cryptoData){
  return ListView(
    children: [
      const ShowchartAndCard(),
      Column(
        children: [
          CryptoCard(coinData: cryptoData.data.ADA),
          CryptoCard(coinData: cryptoData.data.ATOM),
          CryptoCard(coinData: cryptoData.data.BCH),
          CryptoCard(coinData: cryptoData.data.BNB),
          CryptoCard(coinData: cryptoData.data.BTC),
        ],
      ),
    ],
  );
}

