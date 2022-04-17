import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:octopus_test/model/news.dart';
import 'package:octopus_test/utils/constants.dart';
import 'package:octopus_test/ui/new_details/component/NewsHeader.dart';
import 'component/footer.dart';
import 'component/publisher_info.dart';

class NewsDetails extends StatelessWidget {
  static String id = 'NewsDetails';

  NewsDetails({Key? key, this.news}) : super(key: key);

  News? news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Most Popular'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NewsHeader(
                news: news,
              ),
              const SizedBox(
                height: 12,
              ),
              PublisherInfo(
                news: news,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                news!.abstract!,
                style: kArticaleStyle
              ),
              Text(
                news!.abstract!,
                style: kArticaleStyle,
              ),
              Text(
                news!.abstract!,
                style: kArticaleStyle,
              ),
              Text(
                news!.abstract!,
                style: kArticaleStyle,
              ),
              Text(
                news!.abstract!,
                style: kArticaleStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              Footer(
                news: news,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


