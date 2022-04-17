import 'package:cached_network_image/cached_network_image.dart';
import 'package:octopus_test/model/news.dart';
import 'package:octopus_test/utils/constants.dart';
import 'package:flutter/material.dart';


class NewsHeader extends StatelessWidget {
  NewsHeader({Key? key, this.news}) : super(key: key);

  News? news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                news!.title!,
                softWrap: true,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // color: Colors.blueAccent.shade400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18,),
        CachedNetworkImage(
          imageUrl: news!.media![0].media_metadata![2].url ?? news!.media![0].media_metadata![0].url!,
        )
      ],
    );
  }
}
