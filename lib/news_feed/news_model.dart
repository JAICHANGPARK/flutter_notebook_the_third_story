/**
 *
 * "status": "ok",
    "totalResults": 3180,
    -"articles": [   List
    -{
    -"source": {
    "id": "business-insider",
    "name": "Business Insider"
    },
    "author": "Trista Kelley",
    "title": "10 things you need to know before the opening bell",
    "description": "Here's what you need to know. 1. Top US allies are abandoning Trump and warning ISIS will benefit following the assassination of an Iranian general. A spokesperson for British Prime Minister Boris Johnson said the US president's recent threat to target \"Irani…",
    "url": "https://www.businessinsider.com/opening-bell-january-7-2020-2020-1",
    "urlToImage": "https://image.businessinsider.com/5e147a9b855cc23ccb77e5f5?width=1200&format=jpeg",
    "publishedAt": "2020-01-07T12:35:40Z",
    "content": "Here's what you need to know. \r\n1. Top US allies are abandoning Trump and warning ISIS will benefit following the assassination of an Iranian general. A spokesperson for British Prime Minister Boris Johnson said the US president's recent threat to target \"Ira… [+2031 chars]"
    },
    -{
 */

class News{
  String status;
  int totalResults;
  List<Articles> articles;

  News({this.status, this.totalResults, this.articles});
  News.fromJson(Map<String, dynamic> json){
    status = json['status'];
    totalResults = json['totalResults'];
    if(json['articles'] != null){
      articles = new List<Articles>();
      json['articles'].forEach((v){
        articles.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if(this.articles != null){
      data['articles'] = this.articles.map((v) => v.toJson()).toList();
    }
    return data;
  }


}

class Articles{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Articles({this.source, this.author, this.title, this.description, this.url,
    this.urlToImage, this.publishedAt, this.content});

  Articles.fromJson(Map<String, dynamic> json){
    source = json['source'] !=null ? new Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.source != null) data['source'] = this.source.toJson();
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }

}

class Source{
  String id;
  String name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}







































