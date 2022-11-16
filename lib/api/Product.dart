class Product{

  int id;
  String title;
  String image;

  Product({
    required this.id,
    required this.title,
    required this.image,
});

  static Product objJson(Map<String, dynamic> json){
    return Product(id:json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String);
  }


}