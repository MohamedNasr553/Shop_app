class ElectronicCategoryModel {
  bool? status;
  Data? data;

  ElectronicCategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  late int currentPage;
  late List<ElectronicDetailedData> data;
  late String firstPageUrl;
  late int from;
  late int lastPage;
  late String lastPageUrl;
  late String path;
  late int perPage;
  late int to;
  late int total;

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <ElectronicDetailedData>[];
      json['data'].forEach((v) {
        data.add(ElectronicDetailedData.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }
}

class ElectronicDetailedData {
  late int id;
  late dynamic price;
  late dynamic oldPrice;
  late dynamic discount;
  late String image;
  late String name;
  late String description;
  late List<String> images;
  late bool inFavorites;
  late bool inCart;

  ElectronicDetailedData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'].cast<String>();
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }
}