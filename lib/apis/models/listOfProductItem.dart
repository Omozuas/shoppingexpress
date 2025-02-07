import 'package:shopexpres/apis/models/currentPrice.dart';
import 'package:shopexpres/apis/models/listOfPhotos.dart';

class Item {
  String? name;
  dynamic? description;
  String? uniqueId;
  String? urlSlug;
  bool? isAvailable;
  bool? isService;
  dynamic? previousUrlSlugs;
  bool? unavailable;
  dynamic? unavailableStart;
  dynamic? unavailableEnd;
  String? id;
  dynamic? parentProductId;
  dynamic? parent;
  String? organizationId;
  dynamic? stockId;
  List<dynamic>? productImage;
  List<dynamic>? categories;
  DateTime? dateCreated;
  DateTime? lastUpdated;
  String? userId;
  List<Photo> photos;
  dynamic? prices;
  dynamic? stocks;
  List<CurrentPrice>? currentPrice;
  bool? isDeleted;
  dynamic? availableQuantity;
  dynamic? sellingPrice;
  dynamic? discountedPrice;
  dynamic? buyingPrice;
  dynamic? extraInfos;
  dynamic? featuredReviews;

  Item({
    this.name,
    this.description,
    this.uniqueId,
    this.urlSlug,
    this.isAvailable,
    this.isService,
    this.previousUrlSlugs,
    this.unavailable,
    this.unavailableStart,
    this.unavailableEnd,
    this.id,
    this.parentProductId,
    this.parent,
    this.organizationId,
    this.stockId,
    this.productImage,
    this.categories,
    this.dateCreated,
    this.lastUpdated,
    this.userId,
    required this.photos,
    this.prices,
    this.stocks,
    required this.currentPrice,
    this.isDeleted,
    this.availableQuantity,
    this.sellingPrice,
    this.discountedPrice,
    this.buyingPrice,
    this.extraInfos,
    this.featuredReviews,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        uniqueId: json["unique_id"],
        urlSlug: json["url_slug"],
        isAvailable: json["is_available"],
        isService: json["is_service"],
        previousUrlSlugs: json["previous_url_slugs"],
        unavailable: json["unavailable"],
        unavailableStart: json["unavailable_start"],
        unavailableEnd: json["unavailable_end"],
        id: json["id"],
        parentProductId: json["parent_product_id"],
        parent: json["parent"],
        organizationId: json["organization_id"],
        stockId: json["stock_id"],
        productImage: List<dynamic>.from(json["product_image"].map((x) => x)),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        dateCreated: DateTime.parse(json["date_created"]),
        lastUpdated: DateTime.parse(json["last_updated"]),
        userId: json["user_id"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        prices: json["prices"],
        stocks: json["stocks"],
        currentPrice: null ??
            List<CurrentPrice>.from(
                json["current_price"].map((x) => CurrentPrice.fromJson(x))),
        isDeleted: json["is_deleted"],
        availableQuantity: json["available_quantity"],
        sellingPrice: json["selling_price"],
        discountedPrice: json["discounted_price"],
        buyingPrice: json["buying_price"],
        extraInfos: json["extra_infos"],
        featuredReviews: json["featured_reviews"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "unique_id": uniqueId,
        "url_slug": urlSlug,
        "is_available": isAvailable,
        "is_service": isService,
        "previous_url_slugs": previousUrlSlugs,
        "unavailable": unavailable,
        "unavailable_start": unavailableStart,
        "unavailable_end": unavailableEnd,
        "id": id,
        "parent_product_id": parentProductId,
        "parent": parent,
        "organization_id": organizationId,
        "stock_id": stockId,
        "product_image": List<dynamic>.from(productImage!.map((x) => x)),
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "date_created": dateCreated!.toIso8601String(),
        "last_updated": lastUpdated!.toIso8601String(),
        "user_id": userId,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        "prices": prices,
        "stocks": stocks,
        "current_price":
            List<dynamic>.from(currentPrice!.map((x) => x.toJson())) ?? null,
        "is_deleted": isDeleted,
        "available_quantity": availableQuantity,
        "selling_price": sellingPrice,
        "discounted_price": discountedPrice,
        "buying_price": buyingPrice,
        "extra_infos": extraInfos,
        "featured_reviews": featuredReviews,
      };
}

List<Item> cart = [];

List<Item2> cart2 = [];

class Item2 {
  String name;
  dynamic description;
  String uniqueId;
  String urlSlug;
  bool isAvailable;
  bool isService;
  dynamic previousUrlSlugs;
  bool unavailable;
  dynamic unavailableStart;
  dynamic unavailableEnd;
  String id;
  dynamic parentProductId;
  dynamic parent;
  String organizationId;
  dynamic stockId;
  List<dynamic> productImage;
  List<dynamic> categories;
  DateTime dateCreated;
  DateTime lastUpdated;
  String userId;
  List<Photo> photos;
  dynamic prices;
  dynamic stocks;
  dynamic currentPrice;
  bool isDeleted;
  dynamic availableQuantity;
  dynamic sellingPrice;
  dynamic discountedPrice;
  dynamic buyingPrice;
  dynamic extraInfos;
  dynamic featuredReviews;

  Item2({
    required this.name,
    required this.description,
    required this.uniqueId,
    required this.urlSlug,
    required this.isAvailable,
    required this.isService,
    this.previousUrlSlugs,
    required this.unavailable,
    this.unavailableStart,
    this.unavailableEnd,
    required this.id,
    this.parentProductId,
    this.parent,
    required this.organizationId,
    this.stockId,
    required this.productImage,
    required this.categories,
    required this.dateCreated,
    required this.lastUpdated,
    required this.userId,
    required this.photos,
    this.prices,
    this.stocks,
    this.currentPrice,
    required this.isDeleted,
    this.availableQuantity,
    this.sellingPrice,
    this.discountedPrice,
    this.buyingPrice,
    this.extraInfos,
    this.featuredReviews,
  });

  factory Item2.fromJson(Map<String, dynamic> json) => Item2(
        name: json["name"],
        description: json["description"],
        uniqueId: json["unique_id"],
        urlSlug: json["url_slug"],
        isAvailable: json["is_available"],
        isService: json["is_service"],
        previousUrlSlugs: json["previous_url_slugs"],
        unavailable: json["unavailable"],
        unavailableStart: json["unavailable_start"],
        unavailableEnd: json["unavailable_end"],
        id: json["id"],
        parentProductId: json["parent_product_id"],
        parent: json["parent"],
        organizationId: json["organization_id"],
        stockId: json["stock_id"],
        productImage: List<dynamic>.from(json["product_image"].map((x) => x)),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        dateCreated: DateTime.parse(json["date_created"]),
        lastUpdated: DateTime.parse(json["last_updated"]),
        userId: json["user_id"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        prices: json["prices"],
        stocks: json["stocks"],
        currentPrice: json["current_price"],
        isDeleted: json["is_deleted"],
        availableQuantity: json["available_quantity"],
        sellingPrice: json["selling_price"],
        discountedPrice: json["discounted_price"],
        buyingPrice: json["buying_price"],
        extraInfos: json["extra_infos"],
        featuredReviews: json["featured_reviews"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "unique_id": uniqueId,
        "url_slug": urlSlug,
        "is_available": isAvailable,
        "is_service": isService,
        "previous_url_slugs": previousUrlSlugs,
        "unavailable": unavailable,
        "unavailable_start": unavailableStart,
        "unavailable_end": unavailableEnd,
        "id": id,
        "parent_product_id": parentProductId,
        "parent": parent,
        "organization_id": organizationId,
        "stock_id": stockId,
        "product_image": List<dynamic>.from(productImage.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "date_created": dateCreated.toIso8601String(),
        "last_updated": lastUpdated.toIso8601String(),
        "user_id": userId,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        "prices": prices,
        "stocks": stocks,
        "current_price": currentPrice,
        "is_deleted": isDeleted,
        "available_quantity": availableQuantity,
        "selling_price": sellingPrice,
        "discounted_price": discountedPrice,
        "buying_price": buyingPrice,
        "extra_infos": extraInfos,
        "featured_reviews": featuredReviews,
      };
}
