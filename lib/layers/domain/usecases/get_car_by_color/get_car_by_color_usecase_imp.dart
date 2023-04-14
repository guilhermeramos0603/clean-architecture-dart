import 'package:cleanarc/layers/domain/entities/car_entity.dart';
import 'package:cleanarc/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:cleanarc/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCarByColorUseCaseImp implements GetCarByColorUseCase {
  final GetCarByColorRepository _getCarByColorRepository;
  GetCarByColorUseCaseImp(this._getCarByColorRepository);
  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarByColorRepository(color);
  }
}
