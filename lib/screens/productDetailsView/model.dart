class GetItemDetailsModel {
  GetItemDetailsModel({
    required this.id,
    required this.type,
    required this.kind,
    required this.state,
    required this.brand,
    required this.name,
    required this.detail,
    required this.section,
    required this.sectionName,
    required this.familyId,
    required this.familyName,
    required this.subfamilyId,
    required this.subfamilyName,
    required this.extraInfo,
    required this.seo,
    required this.firstVisibleDate,
    required this.attributes,
    required this.sizeGuide,
    required this.xmedia,
    required this.productTag,
  });

  final int? id;
  final String? type;
  final String? kind;
  final String? state;
  final Brand? brand;
  final String? name;
  final Detail? detail;
  final int? section;
  final String? sectionName;
  final int? familyId;
  final String? familyName;
  final int? subfamilyId;
  final String? subfamilyName;
  final GetPlacesDetailsModelExtraInfo? extraInfo;
  final Seo? seo;
  final DateTime? firstVisibleDate;
  final List<dynamic> attributes;
  final SizeGuide? sizeGuide;
  final List<dynamic> xmedia;
  final List<dynamic> productTag;

  factory GetItemDetailsModel.fromJson(Map<String, dynamic> json){
    return GetItemDetailsModel(
      id: json["id"],
      type: json["type"],
      kind: json["kind"],
      state: json["state"],
      brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
      name: json["name"],
      detail: json["detail"] == null ? null : Detail.fromJson(json["detail"]),
      section: json["section"],
      sectionName: json["sectionName"],
      familyId: json["familyId"],
      familyName: json["familyName"],
      subfamilyId: json["subfamilyId"],
      subfamilyName: json["subfamilyName"],
      extraInfo: json["extraInfo"] == null ? null : GetPlacesDetailsModelExtraInfo.fromJson(json["extraInfo"]),
      seo: json["seo"] == null ? null : Seo.fromJson(json["seo"]),
      firstVisibleDate: DateTime.tryParse(json["firstVisibleDate"] ?? ""),
      attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
      sizeGuide: json["sizeGuide"] == null ? null : SizeGuide.fromJson(json["sizeGuide"]),
      xmedia: json["xmedia"] == null ? [] : List<dynamic>.from(json["xmedia"]!.map((x) => x)),
      productTag: json["productTag"] == null ? [] : List<dynamic>.from(json["productTag"]!.map((x) => x)),
    );
  }

}

class Brand {
  Brand({
    required this.brandId,
    required this.brandGroupId,
    required this.brandGroupCode,
  });

  final int? brandId;
  final int? brandGroupId;
  final String? brandGroupCode;

  factory Brand.fromJson(Map<String, dynamic> json){
    return Brand(
      brandId: json["brandId"],
      brandGroupId: json["brandGroupId"],
      brandGroupCode: json["brandGroupCode"],
    );
  }

}

class Detail {
  Detail({
    required this.reference,
    required this.displayReference,
    required this.colors,
    required this.colorSelectorLabel,
    required this.multipleColorLabel,
    required this.detailedComposition,
    required this.relatedProducts,
  });

  final String? reference;
  final String? displayReference;
  final List<Color> colors;
  final String? colorSelectorLabel;
  final String? multipleColorLabel;
  final DetailedComposition? detailedComposition;
  final List<dynamic> relatedProducts;

  factory Detail.fromJson(Map<String, dynamic> json){
    return Detail(
      reference: json["reference"],
      displayReference: json["displayReference"],
      colors: json["colors"] == null ? [] : List<Color>.from(json["colors"]!.map((x) => Color.fromJson(x))),
      colorSelectorLabel: json["colorSelectorLabel"],
      multipleColorLabel: json["multipleColorLabel"],
      detailedComposition: json["detailedComposition"] == null ? null : DetailedComposition.fromJson(json["detailedComposition"]),
      relatedProducts: json["relatedProducts"] == null ? [] : List<dynamic>.from(json["relatedProducts"]!.map((x) => x)),
    );
  }

}

class Color {
  Color({
    required this.id,
    required this.hexCode,
    required this.productId,
    required this.name,
    required this.reference,
    required this.stylingId,
    required this.xmedia,
    required this.shopcartMedia,
    required this.price,
    required this.sizes,
    required this.description,
    required this.rawDescription,
    required this.extraInfo,
    required this.tagTypes,
    required this.attributes,
    required this.relations,
    required this.mainImgs,
    required this.priceUnavailable,
  });

  final String? id;
  final String? hexCode;
  final int? productId;
  final String? name;
  final String? reference;
  final String? stylingId;
  final List<MainImg> xmedia;
  final List<MainImg> shopcartMedia;
  final int? price;
  final List<Size> sizes;
  final String? description;
  final String? rawDescription;
  final ColorExtraInfo? extraInfo;
  final List<TagType> tagTypes;
  final List<dynamic> attributes;
  final List<Relation> relations;
  final List<MainImg> mainImgs;
  final bool? priceUnavailable;

  factory Color.fromJson(Map<String, dynamic> json){
    return Color(
      id: json["id"],
      hexCode: json["hexCode"],
      productId: json["productId"],
      name: json["name"],
      reference: json["reference"],
      stylingId: json["stylingId"],
      xmedia: json["xmedia"] == null ? [] : List<MainImg>.from(json["xmedia"]!.map((x) => MainImg.fromJson(x))),
      shopcartMedia: json["shopcartMedia"] == null ? [] : List<MainImg>.from(json["shopcartMedia"]!.map((x) => MainImg.fromJson(x))),
      price: json["price"],
      sizes: json["sizes"] == null ? [] : List<Size>.from(json["sizes"]!.map((x) => Size.fromJson(x))),
      description: json["description"],
      rawDescription: json["rawDescription"],
      extraInfo: json["extraInfo"] == null ? null : ColorExtraInfo.fromJson(json["extraInfo"]),
      tagTypes: json["tagTypes"] == null ? [] : List<TagType>.from(json["tagTypes"]!.map((x) => TagType.fromJson(x))),
      attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
      relations: json["relations"] == null ? [] : List<Relation>.from(json["relations"]!.map((x) => Relation.fromJson(x))),
      mainImgs: json["mainImgs"] == null ? [] : List<MainImg>.from(json["mainImgs"]!.map((x) => MainImg.fromJson(x))),
      priceUnavailable: json["priceUnavailable"],
    );
  }

}

class ColorExtraInfo {
  ColorExtraInfo({
    required this.isStockInStoresAvailable,
    required this.highlightPrice,
    required this.fitSizeMessage,
  });

  final bool? isStockInStoresAvailable;
  final bool? highlightPrice;
  final String? fitSizeMessage;

  factory ColorExtraInfo.fromJson(Map<String, dynamic> json){
    return ColorExtraInfo(
      isStockInStoresAvailable: json["isStockInStoresAvailable"],
      highlightPrice: json["highlightPrice"],
      fitSizeMessage: json["fitSizeMessage"],
    );
  }

}

class MainImg {
  MainImg({
    required this.datatype,
    required this.mainImgSet,
    required this.type,
    required this.kind,
    required this.path,
    required this.name,
    required this.width,
    required this.height,
    required this.timestamp,
    required this.allowedScreens,
    required this.gravity,
    required this.extraInfo,
    required this.url,
    required this.order,
  });

  final String? datatype;
  final int? mainImgSet;
  final String? type;
  final String? kind;
  final String? path;
  final String? name;
  final int? width;
  final int? height;
  final String? timestamp;
  final List<String> allowedScreens;
  final String? gravity;
  final MainImgExtraInfo? extraInfo;
  final String? url;
  final int? order;

  factory MainImg.fromJson(Map<String, dynamic> json){
    return MainImg(
      datatype: json["datatype"],
      mainImgSet: json["set"],
      type: json["type"],
      kind: json["kind"],
      path: json["path"],
      name: json["name"],
      width: json["width"],
      height: json["height"],
      timestamp: json["timestamp"],
      allowedScreens: json["allowedScreens"] == null ? [] : List<String>.from(json["allowedScreens"]!.map((x) => x)),
      gravity: json["gravity"],
      extraInfo: json["extraInfo"] == null ? null : MainImgExtraInfo.fromJson(json["extraInfo"]),
      url: json["url"],
      order: json["order"],
    );
  }

}

class MainImgExtraInfo {
  MainImgExtraInfo({
    required this.originalName,
    required this.assetId,
    required this.deliveryUrl,
    required this.deliveryPath,
  });

  final String? originalName;
  final String? assetId;
  final String? deliveryUrl;
  final String? deliveryPath;

  factory MainImgExtraInfo.fromJson(Map<String, dynamic> json){
    return MainImgExtraInfo(
      originalName: json["originalName"],
      assetId: json["assetId"],
      deliveryUrl: json["deliveryUrl"],
      deliveryPath: json["deliveryPath"],
    );
  }

}

class Relation {
  Relation({
    required this.ids,
    required this.type,
  });

  final List<int> ids;
  final String? type;

  factory Relation.fromJson(Map<String, dynamic> json){
    return Relation(
      ids: json["ids"] == null ? [] : List<int>.from(json["ids"]!.map((x) => x)),
      type: json["type"],
    );
  }

}

class Size {
  Size({
    required this.availability,
    required this.equivalentSizeId,
    required this.id,
    required this.name,
    required this.price,
    required this.reference,
    required this.sku,
    required this.attributes,
    required this.demand,
    required this.twinnedSkus,
  });

  final String? availability;
  final int? equivalentSizeId;
  final int? id;
  final String? name;
  final int? price;
  final String? reference;
  final int? sku;
  final List<Attribute> attributes;
  final String? demand;
  final List<TwinnedSkus> twinnedSkus;

  factory Size.fromJson(Map<String, dynamic> json){
    return Size(
      availability: json["availability"],
      equivalentSizeId: json["equivalentSizeId"],
      id: json["id"],
      name: json["name"],
      price: json["price"],
      reference: json["reference"],
      sku: json["sku"],
      attributes: json["attributes"] == null ? [] : List<Attribute>.from(json["attributes"]!.map((x) => Attribute.fromJson(x))),
      demand: json["demand"],
      twinnedSkus: json["twinnedSkus"] == null ? [] : List<TwinnedSkus>.from(json["twinnedSkus"]!.map((x) => TwinnedSkus.fromJson(x))),
    );
  }

}

class Attribute {
  Attribute({
    required this.type,
    required this.identifier,
    required this.name,
    required this.values,
    required this.properties,
  });

  final String? type;
  final String? identifier;
  final String? name;
  final List<String> values;
  final Properties? properties;

  factory Attribute.fromJson(Map<String, dynamic> json){
    return Attribute(
      type: json["type"],
      identifier: json["identifier"],
      name: json["name"],
      values: json["values"] == null ? [] : List<String>.from(json["values"]!.map((x) => x)),
      properties: json["properties"] == null ? null : Properties.fromJson(json["properties"]),
    );
  }

}

class Properties {
  Properties({required this.json});
  final Map<String,dynamic> json;

  factory Properties.fromJson(Map<String, dynamic> json){
    return Properties(
        json: json
    );
  }

}

class TwinnedSkus {
  TwinnedSkus({
    required this.sku,
    required this.reference,
  });

  final int? sku;
  final String? reference;

  factory TwinnedSkus.fromJson(Map<String, dynamic> json){
    return TwinnedSkus(
      sku: json["sku"],
      reference: json["reference"],
    );
  }

}

class TagType {
  TagType({
    required this.displayName,
    required this.type,
  });

  final String? displayName;
  final String? type;

  factory TagType.fromJson(Map<String, dynamic> json){
    return TagType(
      displayName: json["displayName"],
      type: json["type"],
    );
  }

}

class DetailedComposition {
  DetailedComposition({
    required this.parts,
    required this.exceptions,
  });

  final List<Part> parts;
  final List<dynamic> exceptions;

  factory DetailedComposition.fromJson(Map<String, dynamic> json){
    return DetailedComposition(
      parts: json["parts"] == null ? [] : List<Part>.from(json["parts"]!.map((x) => Part.fromJson(x))),
      exceptions: json["exceptions"] == null ? [] : List<dynamic>.from(json["exceptions"]!.map((x) => x)),
    );
  }

}

class Part {
  Part({
    required this.description,
    required this.areas,
    required this.components,
    required this.microcontents,
    required this.reinforcements,
  });

  final String? description;
  final List<dynamic> areas;
  final List<Component> components;
  final List<dynamic> microcontents;
  final List<dynamic> reinforcements;

  factory Part.fromJson(Map<String, dynamic> json){
    return Part(
      description: json["description"],
      areas: json["areas"] == null ? [] : List<dynamic>.from(json["areas"]!.map((x) => x)),
      components: json["components"] == null ? [] : List<Component>.from(json["components"]!.map((x) => Component.fromJson(x))),
      microcontents: json["microcontents"] == null ? [] : List<dynamic>.from(json["microcontents"]!.map((x) => x)),
      reinforcements: json["reinforcements"] == null ? [] : List<dynamic>.from(json["reinforcements"]!.map((x) => x)),
    );
  }

}

class Component {
  Component({
    required this.material,
    required this.percentage,
  });

  final String? material;
  final String? percentage;

  factory Component.fromJson(Map<String, dynamic> json){
    return Component(
      material: json["material"],
      percentage: json["percentage"],
    );
  }

}

class GetPlacesDetailsModelExtraInfo {
  GetPlacesDetailsModelExtraInfo({
    required this.isSizeRecommender,
    required this.hasSpecialReturnConditions,
    required this.hasInteractiveSizeGuide,
    required this.extraDetailTitle,
    required this.isBracketingRestricted,
    required this.hasTipsOnExtraDetail,
    required this.highlightPrice,
  });

  final bool? isSizeRecommender;
  final bool? hasSpecialReturnConditions;
  final bool? hasInteractiveSizeGuide;
  final String? extraDetailTitle;
  final bool? isBracketingRestricted;
  final bool? hasTipsOnExtraDetail;
  final bool? highlightPrice;

  factory GetPlacesDetailsModelExtraInfo.fromJson(Map<String, dynamic> json){
    return GetPlacesDetailsModelExtraInfo(
      isSizeRecommender: json["isSizeRecommender"],
      hasSpecialReturnConditions: json["hasSpecialReturnConditions"],
      hasInteractiveSizeGuide: json["hasInteractiveSizeGuide"],
      extraDetailTitle: json["extraDetailTitle"],
      isBracketingRestricted: json["isBracketingRestricted"],
      hasTipsOnExtraDetail: json["hasTipsOnExtraDetail"],
      highlightPrice: json["highlightPrice"],
    );
  }

}

class Seo {
  Seo({
    required this.keyword,
    required this.description,
    required this.breadCrumb,
    required this.seoProductId,
    required this.discernProductId,
    required this.keyWordI18N,
  });

  final String? keyword;
  final String? description;
  final List<BreadCrumb> breadCrumb;
  final String? seoProductId;
  final int? discernProductId;
  final List<KeyWordI18N> keyWordI18N;

  factory Seo.fromJson(Map<String, dynamic> json){
    return Seo(
      keyword: json["keyword"],
      description: json["description"],
      breadCrumb: json["breadCrumb"] == null ? [] : List<BreadCrumb>.from(json["breadCrumb"]!.map((x) => BreadCrumb.fromJson(x))),
      seoProductId: json["seoProductId"],
      discernProductId: json["discernProductId"],
      keyWordI18N: json["keyWordI18n"] == null ? [] : List<KeyWordI18N>.from(json["keyWordI18n"]!.map((x) => KeyWordI18N.fromJson(x))),
    );
  }

}

class BreadCrumb {
  BreadCrumb({
    required this.text,
    required this.id,
  });

  final String? text;
  final int? id;

  factory BreadCrumb.fromJson(Map<String, dynamic> json){
    return BreadCrumb(
      text: json["text"],
      id: json["id"],
    );
  }

}

class KeyWordI18N {
  KeyWordI18N({
    required this.langId,
    required this.keyword,
  });

  final int? langId;
  final String? keyword;

  factory KeyWordI18N.fromJson(Map<String, dynamic> json){
    return KeyWordI18N(
      langId: json["langId"],
      keyword: json["keyword"],
    );
  }

}

class SizeGuide {
  SizeGuide({
    required this.enabled,
  });

  final bool? enabled;

  factory SizeGuide.fromJson(Map<String, dynamic> json){
    return SizeGuide(
      enabled: json["enabled"],
    );
  }

}
