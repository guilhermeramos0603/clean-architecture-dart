import 'package:cleanarc/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:cleanarc/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:cleanarc/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:cleanarc/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:cleanarc/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:cleanarc/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:cleanarc/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:cleanarc/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //DataSource
    getIt.registerLazySingleton<GetCarByColorDataSource>(
        () => GetCarByColorLocalDataSourceImp());
    //Repository
    getIt.registerLazySingleton<GetCarByColorRepository>(
        () => GetCarByColorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
        () => SaveFavoriteCarRepositoryImp());
    //UseCases
    getIt.registerLazySingleton<GetCarByColorUseCase>(
        () => GetCarByColorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarUseCase>(
        () => SaveFavoriteCarUseCaseImp(getIt()));
    //Controller
    getIt.registerFactory<CarController>(() => CarController(getIt(), getIt()));
  }
}
