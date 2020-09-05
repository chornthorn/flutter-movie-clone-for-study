import 'package:dartz/dartz.dart';
import 'package:movie_clone/domain/entities/app_error.dart';
import 'package:movie_clone/domain/entities/movie_entity.dart';
import 'package:movie_clone/domain/entities/no_params.dart';
import 'package:movie_clone/domain/repositories/movie_repository.dart';
import 'package:movie_clone/domain/usecases/usecase.dart';

class GetPopular extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository _movieRepository;

  GetPopular(this._movieRepository);

  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await _movieRepository.getPopular();
  }
}
