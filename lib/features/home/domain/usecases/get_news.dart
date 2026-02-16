import 'package:mechta_flutter/core/usecase/usecase.dart';
import 'package:mechta_flutter/features/home/domain/entities/news_entity.dart';
import 'package:mechta_flutter/features/home/domain/repositories/home_repository.dart';

class GetNewsUseCase extends UseCase<List<NewsEntity>, NoParams> {
  final HomeRepository repository;

  GetNewsUseCase(this.repository);

  @override
  Future<List<NewsEntity>> call(NoParams params) {
    return repository.getNews();
  }
}
