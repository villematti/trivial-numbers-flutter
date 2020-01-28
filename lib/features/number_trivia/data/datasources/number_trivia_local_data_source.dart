import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Get the cached [NumberTriviaModel] witch was gotten the last time
  /// the user had an internet connection
  ///
  /// Throws [CacheException] if no cached data is present
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}
