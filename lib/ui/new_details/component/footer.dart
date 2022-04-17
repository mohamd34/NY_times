import 'package:flutter/material.dart';
import 'package:octopus_test/model/news.dart';
import 'package:octopus_test/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  Footer({Key? key, required this.news}) : super(key: key);

  News? news;
  String? _url;

  @override
  Widget build(BuildContext context) {
    _url = news!.url!;

    return Container(
      // color: Colors.purple,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Published at: ${news!.published_date ?? ' '}',
            style: kGreyStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'updated at: ${news!.updated ?? ' '}',
            style: kGreyStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'To review the whole ${news!.type!} click ',
                style: kGreyStyle,
              ),
              Container(
                width: 30,
                child: TextButton(
                  onPressed: _launchURL,
                  child: Text('here',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue.shade600)),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(_url!)) throw 'Could not launch $_url';
  }
}