import 'package:octopus_test/model/media.dart';

class News{
  String? uri;
  String? url;
  String? id;
  String? asset_id;
  String? source;
  String? published_date;
  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adx_keywords;
  String? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? des_facet;
  List<String>? org_facet;
  List<String>? per_facet;
  List<String>? geo_facet;
  List<Media>? media;
  String? eta_id;



  Map<String, dynamic> toMap() {
    return {
      'uri': this.uri,
      'url': this.url,
      'id': this.id,
      'asset_id': this.asset_id,
      'source': this.source,
      'published_date': this.published_date,
      'updated': this.updated,
      'section': this.section,
      'subsection': this.subsection,
      'nytdsection': this.nytdsection,
      'adx_keywords': this.adx_keywords,
      'column': this.column,
      'byline': this.byline,
      'type': this.type,
      'title': this.title,
      'abstract': this.abstract,
      'des_facet': this.des_facet,
      'org_facet': this.org_facet,
      'per_facet': this.per_facet,
      'geo_facet': this.geo_facet,
      'media': this.media,
      'eta_id': this.eta_id,
    };
  }




  factory News.fromMap(Map<String, dynamic> map) {
    List<Media> temp = [];
    map['media'].forEach((element) => temp.add(Media.fromMap(element)));

    return News(
      uri: map['uri'].toString(),
      url: map['url'].toString(),
      id: map['id'].toString(),
      asset_id: map['asset_id'].toString(),
      source: map['source'].toString(),
      published_date: map['published_date'].toString(),
      updated: map['updated'].toString(),
      section: map['section'].toString(),
      subsection: map['subsection'].toString(),
      nytdsection: map['nytdsection'].toString(),
      adx_keywords: map['adx_keywords'].toString(),
      column: map['column'].toString(),
      byline: map['byline'].toString(),
      type: map['type'].toString(),
      title: map['title'].toString(),
      abstract: map['abstract'].toString(),
      // des_facet: map['des_facet'],
      // org_facet: map['org_facet'],
      // per_facet: map['per_facet'],
      // geo_facet: map['geo_facet'],
      media:  temp,
      eta_id: map['eta_id'].toString(),
    );
  }

  News({
    this.uri,
    this.url,
    this.id,
    this.asset_id,
    this.source,
    this.published_date,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adx_keywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.des_facet,
    this.org_facet,
    this.per_facet,
    this.geo_facet,
    this.media,
    this.eta_id,
  });

  News copyWith({
    String? uri,
    String? url,
    String? id,
    String? asset_id,
    String? source,
    String? published_date,
    String? updated,
    String? section,
    String? subsection,
    String? nytdsection,
    String? adx_keywords,
    String? column,
    String? byline,
    String? type,
    String? title,
    String? abstract,
    List<String>? des_facet,
    List<String>? org_facet,
    List<String>? per_facet,
    List<String>? geo_facet,
    List<Media>? media,
    String? eta_id,
  }) {
    return News(
      uri: uri ?? this.uri,
      url: url ?? this.url,
      id: id ?? this.id,
      asset_id: asset_id ?? this.asset_id,
      source: source ?? this.source,
      published_date: published_date ?? this.published_date,
      updated: updated ?? this.updated,
      section: section ?? this.section,
      subsection: subsection ?? this.subsection,
      nytdsection: nytdsection ?? this.nytdsection,
      adx_keywords: adx_keywords ?? this.adx_keywords,
      column: column ?? this.column,
      byline: byline ?? this.byline,
      type: type ?? this.type,
      title: title ?? this.title,
      abstract: abstract ?? this.abstract,
      des_facet: des_facet ?? this.des_facet,
      org_facet: org_facet ?? this.org_facet,
      per_facet: per_facet ?? this.per_facet,
      geo_facet: geo_facet ?? this.geo_facet,
      media: media ?? this.media,
      eta_id: eta_id ?? this.eta_id,
    );
  }
}