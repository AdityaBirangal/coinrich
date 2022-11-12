part of 'home_screen_cubit.dart';

abstract class HomeScreenState{
  const HomeScreenState();
}

class HomeScreenInitial extends HomeScreenState {
  const HomeScreenInitial();
}

class HomeScreenLoading extends HomeScreenState {
  const HomeScreenLoading();
}

class HomeScreenLoaded extends HomeScreenState {
  final CryptoData cryptoData;
  const HomeScreenLoaded(this.cryptoData);

  @override
  List<Object> get props => [cryptoData];
}

class HomeScreenError extends HomeScreenState {
  final String message;
  const HomeScreenError(this.message);
}
