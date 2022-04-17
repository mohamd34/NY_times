import 'package:octopus_test/bloc/news/news_bloc.dart';
import 'package:octopus_test/widget/NewsListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      bloc: NewsBloc()..add(NewsFetched()),
      builder: (context, state) {
        switch (state.status) {
          case NewsStatus.failure:
            return const Center(child: Text('Failed to fetch news'));
          case NewsStatus.success:
            if (state.news!.isEmpty) {
              return const Center(child: Text('No news'));
            }
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(height: 1),
              itemBuilder: (context, index) {
                return NewsListItem(news: state.news![index]);
              },
              itemCount: state.news!.length,
            );
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
