part of 'news_bloc.dart';

enum NewsStatus { initial, success, failure }

@immutable
class NewsState extends Equatable {
  NewsState({
    this.status = NewsStatus.initial,
    this.news = const [],
    this.hasReachedMax = false,
  });

  NewsStatus? status;
  List<News>? news;
  bool? hasReachedMax;



  @override
  List<Object?> get props => [status, news, hasReachedMax];

  NewsState copyWith({
    NewsStatus? status,
    List<News>? news,
    bool? hasReachedMax,
  }) {
    return NewsState(
      status: status ?? this.status,
      news: news ?? this.news,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}
