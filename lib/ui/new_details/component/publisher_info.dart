import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octopus_test/data/model/news.dart';
import 'package:octopus_test/utils/constants.dart';


class PublisherInfo extends StatelessWidget {
  PublisherInfo({Key? key, required this.news}) : super(key: key);

  News? news;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: news!.media![0].media_metadata![0].url!,
                placeholder: (context, url) => Icon(Icons.error),
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Text(
                    news!.byline!,
                    style: kGreyStyle,
                    softWrap: true,
                  )),
            ],
          ),
        ),
        Text(
          news!.published_date ?? ' ',
          style: kGreyStyle,
        ),
      ],
    );
  }
}