import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_mvvm_state_management/core/network/api_service.dart';
import 'package:movie_mvvm_state_management/core/network/dio_factory.dart';
import 'package:movie_mvvm_state_management/repository/movies_repo.dart';

var getIt = GetIt.instance;

void initGetIt() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));
  getIt.registerLazySingleton(() => MoviesRepo(apiService: getIt()));
}
