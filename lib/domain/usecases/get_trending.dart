import 'package:dartz/dartz.dart';
import 'package:movie_clone/domain/entities/app_error.dart';
import 'package:movie_clone/domain/entities/movie_entity.dart';
import 'package:movie_clone/domain/entities/no_params.dart';
import 'package:movie_clone/domain/repositories/movie_repository.dart';
import 'package:movie_clone/domain/usecases/usecase.dart';

class GetTrending extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository movieRepository;

  GetTrending(this.movieRepository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await movieRepository.getTrending();
  }
}
