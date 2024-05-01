class GetRestaurantProducts {
  DataItems data;
  GetRestaurantProducts({required this.data});
}

class DataItems {
  List<DataProduct> data;
  DataItems({required this.data});
}

class DataProduct {
  int id;
  ProductTitle title;
  ProductTitle description;
  String calories;
  int price;
  int newPrice;
  int categoryId;
  List<Images> images;
  DataProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.calories,
    required this.categoryId,
    required this.price,
    required this.newPrice,
    required this.images,
  });
}

class ProductTitle {
  String ar;
  String en;
  ProductTitle({required this.ar, required this.en});
}

class Images {
  int id;
  String image;
  Images({required this.id, required this.image});
}
