import 'package:octopus_test/data/model/news.dart';
import 'package:octopus_test/ui/new_details/news_details.dart';
import 'package:octopus_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsListItem extends StatelessWidget {
  NewsListItem({Key? key, required this.news}) : super(key: key);

  News news;

  @override
  Widget build(BuildContext context) {
    var title = Text(
      news.title!,
      style: TextStyle(color: Colors.blueAccent.shade400, fontSize: kFontSize),
        softWrap: true,
        overflow: TextOverflow.ellipsis,
    );
    var leading = CachedNetworkImage(
      imageUrl: news.media![0].media_metadata![0].url!,
      placeholder: (context, url) => Icon(Icons.error),
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
    var trailing = Icon(Icons.arrow_forward_ios);
    var subTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(news.byline ?? '', softWrap: true,
          overflow: TextOverflow.ellipsis,),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              news.section ?? ''
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 13,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(news.published_date ?? ' ')
              ],
            ),
          ],
        )
      ],
    );

    return ListTile(
      leading: leading,
      title: title,
      subtitle: subTitle,
      trailing: trailing,
      isThreeLine: true,
      onTap: () {
        _onTapQuestionItem(context);
      },
    );
  }

  void _onTapQuestionItem(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_)=> NewsDetails(news: news,)));
  }
}
