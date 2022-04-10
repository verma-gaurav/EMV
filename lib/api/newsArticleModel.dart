class NewsPost {
  final String? id;
  final String? type;
  final String? model;
  final String? title;
  final String? link;
  final String? pubDate;
  final String? description;
  final String? source;
  final String? thumb_img;
  final String? full_img;
  final String? isActive;
  final String? created_by;
  final String? created_at;
  final String? updated_by;
  final String? updated_at;
  final String? content;
  final String? guid;
  final String? source_id;
  final String? view;
  final String? status;
  final String? flag_count;
  final String? admin_link;
  final String? admin_name;
  final String? image_url;
  final String? meta_keyword;
  final String? meta_description;
  final String? meta_title;
  final String? like_count;
  final String? discuss_count;

  const NewsPost(
      {this.id,
      this.type,
      this.model,
      this.title,
      this.link,
      this.pubDate,
      this.description,
      this.source,
      this.thumb_img,
      this.full_img,
      this.isActive,
      this.created_by,
      this.created_at,
      this.updated_by,
      this.updated_at,
      this.content,
      this.guid,
      this.source_id,
      this.view,
      this.status,
      this.flag_count,
      this.admin_link,
      this.admin_name,
      this.image_url,
      this.meta_keyword,
      this.meta_description,
      this.meta_title,
      this.like_count,
      this.discuss_count});

  factory NewsPost.fromjson(Map<String, dynamic> json) {
    return NewsPost(
      id: json['id'] as String,
      type: json['type'] as String,
      model: json['model'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      pubDate: json['pubDate'] as String,
      description: json['description'] as String,
      source: json['source'] as String,
      thumb_img: json['thumb_img'] as String,
      full_img: json['full_img'] as String,
      isActive: json['isActive'] as String,
      created_by: json['created_by'] as String,
      created_at: json['created_at'] as String,
      updated_by: json['updated_by'] as String,
      updated_at: json['updated_at'] as String,
      content: json['content'] as String,
      guid: json['guid'] as String,
      source_id: json['source_id'] as String,
      view: json['view'] as String,
      status: json['status'] as String,
      flag_count: json['flag_count'] as String,
      admin_link: json['admin_link'] as String,
      admin_name: json['admin_name'] as String,
      image_url: json['image_url'] as String,
      meta_keyword: json['meta_keyword'] as String,
      meta_description: json['meta_description'] as String,
      meta_title: json['meta_title'] as String,
      like_count: json['like_count'] as String,
      discuss_count: json['discuss_count'] as String,
    );
  }

  static fromJson(item) {}
}
