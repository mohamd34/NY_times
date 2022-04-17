import 'package:octopus_test/model/media_metadata.dart';

class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  String? approved_for_syndication;
  List<MediaMetaData>? media_metadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approved_for_syndication,
    this.media_metadata,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': this.type,
      'subtype': this.subtype,
      'caption': this.caption,
      'copyright': this.copyright,
      'approved_for_syndication': this.approved_for_syndication,
      'media_metadata': this.media_metadata,
    };
  }

  factory Media.fromMap(Map<String, dynamic> map) {
    List<MediaMetaData> temp = [];
    map['media-metadata']
        .forEach((element) => temp.add(MediaMetaData.fromMap(element)));

    return Media(
      type: map['type'].toString(),
      subtype: map['subtype'].toString(),
      caption: map['caption'].toString(),
      copyright: map['copyright'].toString(),
      approved_for_syndication: map['approved_for_syndication'].toString(),
      media_metadata: temp,
    );
  }
}
