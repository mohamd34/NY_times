class MediaMetaData{
  String? url;
  String? format;
  String? height;
  String? width;

  MediaMetaData({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': this.url,
      'format': this.format,
      'height': this.height,
      'width': this.width,
    };
  }

  factory MediaMetaData.fromMap(Map<String, dynamic> map) {
    return MediaMetaData(
      url: map['url'].toString(),
      format: map['format'].toString(),
      height: map['height'].toString(),
      width: map['width'].toString(),
    );
  }


}