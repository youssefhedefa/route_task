import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  final List<Product>? products;
  static const String productsKey = "products";

  final num? total;
  static const String totalKey = "total";

  final num? skip;
  static const String skipKey = "skip";

  final num? limit;
  static const String limitKey = "limit";


  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

}

@JsonSerializable()
class Product {
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  final int? id;
  static const String idKey = "id";

  final String? title;
  static const String titleKey = "title";

  final String? description;
  static const String descriptionKey = "description";

  final String? category;
  static const String categoryKey = "category";

  final num? price;
  static const String priceKey = "price";

  final num? discountPercentage;
  static const String discountPercentageKey = "discountPercentage";

  final num? rating;
  static const String ratingKey = "rating";

  final num? stock;
  static const String stockKey = "stock";

  final List<String>? tags;
  static const String tagsKey = "tags";

  final String? brand;
  static const String brandKey = "brand";

  final String? sku;
  static const String skuKey = "sku";

  final num? weight;
  static const String weightKey = "weight";

  final Dimensions? dimensions;
  static const String dimensionsKey = "dimensions";

  final String? warrantyInformation;
  static const String warrantyInformationKey = "warrantyInformation";

  final String? shippingInformation;
  static const String shippingInformationKey = "shippingInformation";

  final String? availabilityStatus;
  static const String availabilityStatusKey = "availabilityStatus";

  final List<Review>? reviews;
  static const String reviewsKey = "reviews";

  final String? returnPolicy;
  static const String returnPolicyKey = "returnPolicy";

  final num? minimumOrderQuantity;
  static const String minimumOrderQuantityKey = "minimumOrderQuantity";

  final Meta? meta;
  static const String metaKey = "meta";

  final List<String>? images;
  static const String imagesKey = "images";

  final String? thumbnail;
  static const String thumbnailKey = "thumbnail";


  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

}

@JsonSerializable()
class Dimensions {
  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  final int? width;
  static const String widthKey = "width";

  final num? height;
  static const String heightKey = "height";

  final num? depth;
  static const String depthKey = "depth";


  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionsToJson(this);

}

@JsonSerializable()
class Meta {
  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  final DateTime? createdAt;
  static const String createdAtKey = "createdAt";

  final DateTime? updatedAt;
  static const String updatedAtKey = "updatedAt";

  final String? barcode;
  static const String barcodeKey = "barcode";

  final String? qrCode;
  static const String qrCodeKey = "qrCode";


  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

}

@JsonSerializable()
class Review {
  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  final num? rating;
  static const String ratingKey = "rating";

  final String? comment;
  static const String commentKey = "comment";

  final DateTime? date;
  static const String dateKey = "date";

  final String? reviewerName;
  static const String reviewerNameKey = "reviewerName";

  final String? reviewerEmail;
  static const String reviewerEmailKey = "reviewerEmail";


  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);

}
