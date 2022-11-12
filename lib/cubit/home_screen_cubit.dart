import 'package:coinrich/services/crypto_api_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:coinrich/models/crypto_data.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final CryptoApiRepository _cryptoApiRepository;

  HomeScreenCubit(this._cryptoApiRepository) : super(const HomeScreenInitial());

  Future<void> getCryptoData() async{
    try {
      emit(const HomeScreenLoading());
      final cryptoData = await _cryptoApiRepository.fetchCryptoData();
      emit(HomeScreenLoaded(cryptoData));
    } on Error {
      emit(const HomeScreenError("Couldn't fetch data. Is the device online?"));
    }
  }
}