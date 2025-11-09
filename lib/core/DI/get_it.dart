import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/core/networking/web_services.dart';
import 'package:docdoc/featuers/screens/login/data/logic/cubit/login_cubit_cubit.dart';
import 'package:docdoc/featuers/screens/login/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<LoginCubitCubit>(() => LoginCubitCubit(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));
}
