import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:octopus_test/data/data_provider/Networking.dart';
import 'package:octopus_test/data/model/api_response.dart';
import 'package:octopus_test/data/model/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState()) {
    on<NewsFetched>(
      _onNewsFetched,
    );
  }

  Future<void> _onNewsFetched(
      NewsFetched event,
      Emitter<NewsState> emit,
      ) async {
    try {
      // if(state.hasReachedMax!) return;
      if (state.status == NewsStatus.initial) {
        ApiResponse response =
        await DataLoader().getRequest(url: DataLoader.mostPopularsUrl);

        if(response.data!.isNotEmpty){
          List<News> news = [];
          response.data!.forEach((json){
            news.add(News.fromMap(json));
          });
          return emit(state.copyWith(
            status: NewsStatus.success,
            news: news,
            hasReachedMax: response.hasMore,
          ));
        }
      }
    } catch (_) {
      emit(state.copyWith(status: NewsStatus.failure));
    }
  }
}
