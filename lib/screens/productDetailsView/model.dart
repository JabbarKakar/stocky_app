class DetailsModel {
  DetailsModel({
    required this.noIndex,
    required this.mkSpots,
    required this.product,
    required this.showNativeAppBanner,
    required this.productMetaData,
    required this.parentId,
    required this.category,
    required this.categories,
    required this.backUrl,
    required this.keyWordI18N,
    required this.docInfo,
    required this.breadCrumbs,
    required this.analyticsData,
    required this.mobileApp,
    required this.isSharedProduct,
    required this.giftCardExpirationMonths,
    required this.sections,
    required this.isRgpdEnabled,
    required this.showSizeGuideInfoLink,
    required this.workgroups,
    required this.chatView,
    required this.viewName,
    required this.userKind,
    required this.clientAppConfig,
    required this.renderingEngine,
    required this.appVersion,
    required this.i18NVersion,
  });

  final bool? noIndex;
  final MkSpots? mkSpots;
  final Product? product;
  final bool? showNativeAppBanner;
  final List<ProductMetaDatum> productMetaData;
  final int? parentId;
  final Category? category;
  final List<dynamic> categories;
  final String? backUrl;
  final List<KeyWordI18N> keyWordI18N;
  final DocInfo? docInfo;
  final List<BreadCrumb> breadCrumbs;
  final AnalyticsData? analyticsData;
  final MobileApp? mobileApp;
  final bool? isSharedProduct;
  final int? giftCardExpirationMonths;
  final List<Section> sections;
  final bool? isRgpdEnabled;
  final bool? showSizeGuideInfoLink;
  final List<dynamic> workgroups;
  final dynamic chatView;
  final String? viewName;
  final String? userKind;
  final ClientAppConfig? clientAppConfig;
  final String? renderingEngine;
  final String? appVersion;
  final int? i18NVersion;

  factory DetailsModel.fromJson(Map<String, dynamic> json){
    return DetailsModel(
      noIndex: json["noIndex"],
      mkSpots: json["mkSpots"] == null ? null : MkSpots.fromJson(json["mkSpots"]),
      product: json["product"] == null ? null : Product.fromJson(json["product"]),
      showNativeAppBanner: json["showNativeAppBanner"],
      productMetaData: json["productMetaData"] == null ? [] : List<ProductMetaDatum>.from(json["productMetaData"]!.map((x) => ProductMetaDatum.fromJson(x))),
      parentId: json["parentId"],
      category: json["category"] == null ? null : Category.fromJson(json["category"]),
      categories: json["categories"] == null ? [] : List<dynamic>.from(json["categories"]!.map((x) => x)),
      backUrl: json["backUrl"],
      keyWordI18N: json["keyWordI18n"] == null ? [] : List<KeyWordI18N>.from(json["keyWordI18n"]!.map((x) => KeyWordI18N.fromJson(x))),
      docInfo: json["docInfo"] == null ? null : DocInfo.fromJson(json["docInfo"]),
      breadCrumbs: json["breadCrumbs"] == null ? [] : List<BreadCrumb>.from(json["breadCrumbs"]!.map((x) => BreadCrumb.fromJson(x))),
      analyticsData: json["analyticsData"] == null ? null : AnalyticsData.fromJson(json["analyticsData"]),
      mobileApp: json["mobileApp"] == null ? null : MobileApp.fromJson(json["mobileApp"]),
      isSharedProduct: json["isSharedProduct"],
      giftCardExpirationMonths: json["giftCardExpirationMonths"],
      sections: json["sections"] == null ? [] : List<Section>.from(json["sections"]!.map((x) => Section.fromJson(x))),
      isRgpdEnabled: json["isRgpdEnabled"],
      showSizeGuideInfoLink: json["showSizeGuideInfoLink"],
      workgroups: json["workgroups"] == null ? [] : List<dynamic>.from(json["workgroups"]!.map((x) => x)),
      chatView: json["chatView"],
      viewName: json["viewName"],
      userKind: json["userKind"],
      clientAppConfig: json["clientAppConfig"] == null ? null : ClientAppConfig.fromJson(json["clientAppConfig"]),
      renderingEngine: json["renderingEngine"],
      appVersion: json["appVersion"],
      i18NVersion: json["i18nVersion"],
    );
  }

}

class AnalyticsData {
  AnalyticsData({
    required this.appVersion,
    required this.pageType,
    required this.page,
    required this.trackerUa,
    required this.anonymizeIp,
    required this.hostname,
    required this.categoryName,
    required this.colorCode,
    required this.mainPrice,
    required this.colorRef,
    required this.productId,
    required this.productRef,
    required this.productName,
    required this.section,
    required this.stylingId,
    required this.family,
    required this.subfamily,
    required this.catentryId,
    required this.lowOnStockProduct,
    required this.brand,
  });

  final String? appVersion;
  final String? pageType;
  final Page? page;
  final String? trackerUa;
  final String? anonymizeIp;
  final String? hostname;
  final String? categoryName;
  final String? colorCode;
  final double? mainPrice;
  final String? colorRef;
  final int? productId;
  final String? productRef;
  final String? productName;
  final String? section;
  final String? stylingId;
  final String? family;
  final String? subfamily;
  final int? catentryId;
  final bool? lowOnStockProduct;
  final int? brand;

  factory AnalyticsData.fromJson(Map<String, dynamic> json){
    return AnalyticsData(
      appVersion: json["appVersion"],
      pageType: json["pageType"],
      page: json["page"] == null ? null : Page.fromJson(json["page"]),
      trackerUa: json["trackerUA"],
      anonymizeIp: json["anonymizeIp"],
      hostname: json["hostname"],
      categoryName: json["categoryName"],
      colorCode: json["colorCode"],
      mainPrice: json["mainPrice"],
      colorRef: json["colorRef"],
      productId: json["productId"],
      productRef: json["productRef"],
      productName: json["productName"],
      section: json["section"],
      stylingId: json["stylingId"],
      family: json["family"],
      subfamily: json["subfamily"],
      catentryId: json["catentryId"],
      lowOnStockProduct: json["lowOnStockProduct"],
      brand: json["brand"],
    );
  }

}

class Page {
  Page({
    required this.language,
    required this.shop,
    required this.currency,
  });

  final String? language;
  final String? shop;
  final String? currency;

  factory Page.fromJson(Map<String, dynamic> json){
    return Page(
      language: json["language"],
      shop: json["shop"],
      currency: json["currency"],
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

class Category {
  Category({required this.json});
  final Map<String,dynamic> json;

  factory Category.fromJson(Map<String, dynamic> json){
    return Category(
        json: json
    );
  }

}

class ClientAppConfig {
  ClientAppConfig({
    required this.appAssetsBasePath,
    required this.clientSideNavigationTimeout,
    required this.env,
    required this.trkpln,
    required this.wechatAppId,
    required this.appLinks,
    required this.channel,
    required this.cookiesConsent,
    required this.enabledFeatures,
    required this.formatterConfig,
    required this.formatterConfigByCur,
    required this.geo,
    required this.imageBaseUrl,
    required this.isDevEnv,
    required this.isOpenProductPageInNewTab,
    required this.isSsl,
    required this.langCode,
    required this.langId,
    required this.locale,
    required this.originalUrl,
    required this.sem,
    required this.storeCode,
    required this.storeCountryCode,
    required this.storeId,
    required this.universalLinks,
    required this.version,
    required this.videoBaseUrl,
    required this.xmediaFormats,
    required this.xmediaTransformations,
    required this.store,
    required this.i18NConfig,
    required this.domains,
    required this.serverPorts,
    required this.zenitEndpoints,
    required this.o11Y,
    required this.chatConfig,
    required this.networkClientMonitoring,
    required this.xmediaNetworkPerformance,
    required this.growthBook,
  });

  final String? appAssetsBasePath;
  final int? clientSideNavigationTimeout;
  final String? env;
  final Trkpln? trkpln;
  final String? wechatAppId;
  final Links? appLinks;
  final String? channel;
  final ClientAppConfigCookiesConsent? cookiesConsent;
  final List<String> enabledFeatures;
  final FormatterConfig? formatterConfig;
  final FormatterConfigByCur? formatterConfigByCur;
  final Geo? geo;
  final String? imageBaseUrl;
  final bool? isDevEnv;
  final bool? isOpenProductPageInNewTab;
  final bool? isSsl;
  final String? langCode;
  final int? langId;
  final String? locale;
  final String? originalUrl;
  final Sem? sem;
  final String? storeCode;
  final String? storeCountryCode;
  final int? storeId;
  final Links? universalLinks;
  final String? version;
  final String? videoBaseUrl;
  final List<XmediaFormat> xmediaFormats;
  final List<XmediaTransformation> xmediaTransformations;
  final Store? store;
  final I18NConfig? i18NConfig;
  final Domains? domains;
  final Ports? serverPorts;
  final ZenitEndpoints? zenitEndpoints;
  final O11Y? o11Y;
  final ChatConfig? chatConfig;
  final ClientAppConfigNetworkClientMonitoring? networkClientMonitoring;
  final XmediaNetworkPerformance? xmediaNetworkPerformance;
  final GrowthBook? growthBook;

  factory ClientAppConfig.fromJson(Map<String, dynamic> json){
    return ClientAppConfig(
      appAssetsBasePath: json["appAssetsBasePath"],
      clientSideNavigationTimeout: json["clientSideNavigationTimeout"],
      env: json["env"],
      trkpln: json["trkpln"] == null ? null : Trkpln.fromJson(json["trkpln"]),
      wechatAppId: json["wechatAppId"],
      appLinks: json["appLinks"] == null ? null : Links.fromJson(json["appLinks"]),
      channel: json["channel"],
      cookiesConsent: json["cookiesConsent"] == null ? null : ClientAppConfigCookiesConsent.fromJson(json["cookiesConsent"]),
      enabledFeatures: json["enabledFeatures"] == null ? [] : List<String>.from(json["enabledFeatures"]!.map((x) => x)),
      formatterConfig: json["formatterConfig"] == null ? null : FormatterConfig.fromJson(json["formatterConfig"]),
      formatterConfigByCur: json["formatterConfigByCur"] == null ? null : FormatterConfigByCur.fromJson(json["formatterConfigByCur"]),
      geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
      imageBaseUrl: json["imageBaseUrl"],
      isDevEnv: json["isDevEnv"],
      isOpenProductPageInNewTab: json["isOpenProductPageInNewTab"],
      isSsl: json["isSsl"],
      langCode: json["langCode"],
      langId: json["langId"],
      locale: json["locale"],
      originalUrl: json["originalUrl"],
      sem: json["sem"] == null ? null : Sem.fromJson(json["sem"]),
      storeCode: json["storeCode"],
      storeCountryCode: json["storeCountryCode"],
      storeId: json["storeId"],
      universalLinks: json["universalLinks"] == null ? null : Links.fromJson(json["universalLinks"]),
      version: json["version"],
      videoBaseUrl: json["videoBaseUrl"],
      xmediaFormats: json["xmediaFormats"] == null ? [] : List<XmediaFormat>.from(json["xmediaFormats"]!.map((x) => XmediaFormat.fromJson(x))),
      xmediaTransformations: json["xmediaTransformations"] == null ? [] : List<XmediaTransformation>.from(json["xmediaTransformations"]!.map((x) => XmediaTransformation.fromJson(x))),
      store: json["store"] == null ? null : Store.fromJson(json["store"]),
      i18NConfig: json["i18nConfig"] == null ? null : I18NConfig.fromJson(json["i18nConfig"]),
      domains: json["domains"] == null ? null : Domains.fromJson(json["domains"]),
      serverPorts: json["serverPorts"] == null ? null : Ports.fromJson(json["serverPorts"]),
      zenitEndpoints: json["zenitEndpoints"] == null ? null : ZenitEndpoints.fromJson(json["zenitEndpoints"]),
      o11Y: json["o11y"] == null ? null : O11Y.fromJson(json["o11y"]),
      chatConfig: json["chatConfig"] == null ? null : ChatConfig.fromJson(json["chatConfig"]),
      networkClientMonitoring: json["networkClientMonitoring"] == null ? null : ClientAppConfigNetworkClientMonitoring.fromJson(json["networkClientMonitoring"]),
      xmediaNetworkPerformance: json["xmediaNetworkPerformance"] == null ? null : XmediaNetworkPerformance.fromJson(json["xmediaNetworkPerformance"]),
      growthBook: json["growthBook"] == null ? null : GrowthBook.fromJson(json["growthBook"]),
    );
  }

}

class Links {
  Links({
    required this.ios,
    required this.android,
  });

  final String? ios;
  final String? android;

  factory Links.fromJson(Map<String, dynamic> json){
    return Links(
      ios: json["ios"],
      android: json["android"],
    );
  }

}

class ChatConfig {
  ChatConfig({
    required this.zaraApiBaseUrl,
    required this.chatServerUrl,
    required this.mochatApiBaseUrl,
  });

  final String? zaraApiBaseUrl;
  final String? chatServerUrl;
  final String? mochatApiBaseUrl;

  factory ChatConfig.fromJson(Map<String, dynamic> json){
    return ChatConfig(
      zaraApiBaseUrl: json["zaraApiBaseUrl"],
      chatServerUrl: json["chatServerUrl"],
      mochatApiBaseUrl: json["mochatApiBaseUrl"],
    );
  }

}

class ClientAppConfigCookiesConsent {
  ClientAppConfigCookiesConsent({
    required this.isEnabled,
    required this.oneTrustId,
  });

  final bool? isEnabled;
  final String? oneTrustId;

  factory ClientAppConfigCookiesConsent.fromJson(Map<String, dynamic> json){
    return ClientAppConfigCookiesConsent(
      isEnabled: json["isEnabled"],
      oneTrustId: json["oneTrustId"],
    );
  }

}

class Domains {
  Domains({
    required this.desktop,
  });

  final Desktop? desktop;

  factory Domains.fromJson(Map<String, dynamic> json){
    return Domains(
      desktop: json["desktop"] == null ? null : Desktop.fromJson(json["desktop"]),
    );
  }

}

class Desktop {
  Desktop({
    required this.desktopDynamic,
    required this.desktopStatic,
    required this.ports,
  });

  final Dynamic? desktopDynamic;
  final Dynamic? desktopStatic;
  final Ports? ports;

  factory Desktop.fromJson(Map<String, dynamic> json){
    return Desktop(
      desktopDynamic: json["dynamic"] == null ? null : Dynamic.fromJson(json["dynamic"]),
      desktopStatic: json["static"] == null ? null : Dynamic.fromJson(json["static"]),
      ports: json["ports"] == null ? null : Ports.fromJson(json["ports"]),
    );
  }

}

class Dynamic {
  Dynamic({
    required this.base,
    required this.cn,
    required this.xn,
  });

  final String? base;
  final String? cn;
  final String? xn;

  factory Dynamic.fromJson(Map<String, dynamic> json){
    return Dynamic(
      base: json["base"],
      cn: json["cn"],
      xn: json["xn"],
    );
  }

}

class Ports {
  Ports({
    required this.plain,
    required this.ssl,
  });

  final int? plain;
  final int? ssl;

  factory Ports.fromJson(Map<String, dynamic> json){
    return Ports(
      plain: json["plain"],
      ssl: json["ssl"],
    );
  }

}

class FormatterConfig {
  FormatterConfig({
    required this.currency,
    required this.symbol,
    required this.currencyFormat,
    required this.currencyDecimals,
    required this.currencyCode,
    required this.currencySymbol,
    required this.currencyRateToEuro,
    required this.formats,
  });

  final String? currency;
  final String? symbol;
  final String? currencyFormat;
  final int? currencyDecimals;
  final String? currencyCode;
  final String? currencySymbol;
  final double? currencyRateToEuro;
  final Formats? formats;

  factory FormatterConfig.fromJson(Map<String, dynamic> json){
    return FormatterConfig(
      currency: json["currency"],
      symbol: json["symbol"],
      currencyFormat: json["currencyFormat"],
      currencyDecimals: json["currencyDecimals"],
      currencyCode: json["currencyCode"],
      currencySymbol: json["currencySymbol"],
      currencyRateToEuro: json["currencyRateToEuro"],
      formats: json["formats"] == null ? null : Formats.fromJson(json["formats"]),
    );
  }

}

class Formats {
  Formats({
    required this.number,
    required this.date,
  });

  final Number? number;
  final Date? date;

  factory Formats.fromJson(Map<String, dynamic> json){
    return Formats(
      number: json["number"] == null ? null : Number.fromJson(json["number"]),
      date: json["date"] == null ? null : Date.fromJson(json["date"]),
    );
  }

}

class Date {
  Date({
    required this.shortDate,
    required this.longDate,
  });

  final String? shortDate;
  final String? longDate;

  factory Date.fromJson(Map<String, dynamic> json){
    return Date(
      shortDate: json["shortDate"],
      longDate: json["longDate"],
    );
  }

}

class Number {
  Number({
    required this.decimalSeparator,
    required this.thousandsSeparator,
  });

  final String? decimalSeparator;
  final String? thousandsSeparator;

  factory Number.fromJson(Map<String, dynamic> json){
    return Number(
      decimalSeparator: json["decimalSeparator"],
      thousandsSeparator: json["thousandsSeparator"],
    );
  }

}

class FormatterConfigByCur {
  FormatterConfigByCur({
    required this.gbp,
  });

  final FormatterConfig? gbp;

  factory FormatterConfigByCur.fromJson(Map<String, dynamic> json){
    return FormatterConfigByCur(
      gbp: json["GBP"] == null ? null : FormatterConfig.fromJson(json["GBP"]),
    );
  }

}

class Geo {
  Geo({
    required this.mapsService,
    required this.gmaps,
  });

  final String? mapsService;
  final Gmaps? gmaps;

  factory Geo.fromJson(Map<String, dynamic> json){
    return Geo(
      mapsService: json["mapsService"],
      gmaps: json["gmaps"] == null ? null : Gmaps.fromJson(json["gmaps"]),
    );
  }

}

class Gmaps {
  Gmaps({
    required this.user,
    required this.key,
    required this.channel,
    required this.isAddressAutocompleteActive,
    required this.autocompleteKey,
  });

  final String? user;
  final String? key;
  final String? channel;
  final bool? isAddressAutocompleteActive;
  final String? autocompleteKey;

  factory Gmaps.fromJson(Map<String, dynamic> json){
    return Gmaps(
      user: json["user"],
      key: json["key"],
      channel: json["channel"],
      isAddressAutocompleteActive: json["isAddressAutocompleteActive"],
      autocompleteKey: json["autocompleteKey"],
    );
  }

}

class GrowthBook {
  GrowthBook({
    required this.enabled,
    required this.clientKey,
    required this.decryptionKey,
    required this.host,
  });

  final String? enabled;
  final String? clientKey;
  final String? decryptionKey;
  final String? host;

  factory GrowthBook.fromJson(Map<String, dynamic> json){
    return GrowthBook(
      enabled: json["enabled"],
      clientKey: json["clientKey"],
      decryptionKey: json["decryptionKey"],
      host: json["host"],
    );
  }

}

class I18NConfig {
  I18NConfig({
    required this.cacheEnabled,
    required this.defaultMessage,
    required this.url,
    required this.version,
  });

  final bool? cacheEnabled;
  final String? defaultMessage;
  final String? url;
  final int? version;

  factory I18NConfig.fromJson(Map<String, dynamic> json){
    return I18NConfig(
      cacheEnabled: json["cacheEnabled"],
      defaultMessage: json["defaultMessage"],
      url: json["url"],
      version: json["version"],
    );
  }

}

class ClientAppConfigNetworkClientMonitoring {
  ClientAppConfigNetworkClientMonitoring({
    required this.enabled,
    required this.interval,
    required this.fileUrl,
  });

  final bool? enabled;
  final int? interval;
  final String? fileUrl;

  factory ClientAppConfigNetworkClientMonitoring.fromJson(Map<String, dynamic> json){
    return ClientAppConfigNetworkClientMonitoring(
      enabled: json["enabled"],
      interval: json["interval"],
      fileUrl: json["fileUrl"],
    );
  }

}

class O11Y {
  O11Y({
    required this.apiToken,
    required this.bufferSize,
    required this.domain,
    required this.environment,
  });

  final String? apiToken;
  final int? bufferSize;
  final String? domain;
  final String? environment;

  factory O11Y.fromJson(Map<String, dynamic> json){
    return O11Y(
      apiToken: json["apiToken"],
      bufferSize: json["bufferSize"],
      domain: json["domain"],
      environment: json["environment"],
    );
  }

}

class Sem {
  Sem({
    required this.exelution,
  });

  final SizeGuide? exelution;

  factory Sem.fromJson(Map<String, dynamic> json){
    return Sem(
      exelution: json["exelution"] == null ? null : SizeGuide.fromJson(json["exelution"]),
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

class Store {
  Store({
    required this.accountVerification,
    required this.availableStoreReturnProcess,
    required this.cartCompositionExtraDetail,
    required this.cartRelatedProducts,
    required this.catalogId,
    required this.colbensonUrl,
    required this.countryCode,
    required this.countryName,
    required this.discountDisclaimer,
    required this.displayDiscountPercentage,
    required this.displayFuturePrice,
    required this.displayOriginalPrice,
    required this.eguiData,
    required this.eula,
    required this.generatePermanentSeoUrl,
    required this.giftCardStepSliderValue,
    required this.gitftCardMonthsToExpire,
    required this.hasUserPreferredLanguage,
    required this.hasUserRegisterPreferredLanguage,
    required this.hidePriceNotAvailableMessage,
    required this.id,
    required this.inditexLinkedAccounts,
    required this.isAbTestingAllowed,
    required this.isAddressEvaluationEnabled,
    required this.isCompanyAllowed,
    required this.isDarkModeEnabled,
    required this.isDataConsentPolicyEnabled,
    required this.isDeleteAccountActive,
    required this.isDonationEnabled,
    required this.isDonationFilterEnabled,
    required this.isElectronicInvoiceActive,
    required this.isFacebookConversionEnabled,
    required this.isGiftcardDetailRequired,
    required this.isInStoreOrdersTicketScanningEnabled,
    required this.isLiveTrackingEnabled,
    required this.isMultiOrderReturnsDetailActive,
    required this.isMultiOrderReturnsExchangeActive,
    required this.isMultiOrderReturnsReturnActive,
    required this.isNewOrderDetailEnabled,
    required this.isNewsletterSingleOptInEnabled,
    required this.isNewsletterSingleOptOutEnabled,
    required this.isNewsletterUnsubscribeButtonEnabled,
    required this.isOnlineExchangeAllowed,
    required this.isOpenForSale,
    required this.isOrderCancellationRequestFormEnabled,
    required this.isPaperlessShipmentEnabled,
    required this.isPrefixPhoneDisabled,
    required this.isPromotionAndroidActive,
    required this.isPromotioniOsActive,
    required this.isRefundBankSearchAvailable,
    required this.isRefundHelpEnabled,
    required this.isRegionGroupEnabled,
    required this.isRegisterEnabled,
    required this.isRepentanceEnabled,
    required this.isReturnInStoreMessageVisible,
    required this.isReturnRequestFormProcessEnabled,
    required this.isReturnRequestListAvailable,
    required this.isShowPriceTaxMessageRequired,
    required this.isShowTaxesRequired,
    required this.isSocialDesign,
    required this.isStockAccurateEnabled,
    required this.isStockInStoresAvailable,
    required this.isTaxIncluded,
    required this.isUsePhoneAsLogonId,
    required this.isVirtualGiftCardShareAllowed,
    required this.isWalletAvailable,
    required this.linkToRelatedStores,
    required this.omnibusMessageEnabled,
    required this.phoneCountryCode,
    required this.physicalStores,
    required this.privacy,
    required this.privacyUrl,
    required this.recommendProviderLocation,
    required this.relatedStores,
    required this.searchLang,
    required this.sections,
    required this.sharingMethods,
    required this.shouldShowState,
    required this.showAdCookiesPreferences,
    required this.showContactLinkInHelpMenu,
    required this.showContactOnUserMenu,
    required this.showCrossBorderPrivacyCheck,
    required this.showPrivacityPolicyCookie,
    required this.showSensitivePrivacyCheck,
    required this.stockBaseUrl,
    required this.styles,
    required this.supportedLanguages,
    required this.useXmediaRealWidth,
    required this.virtualGiftCard,
    required this.virtualGiftCardMaxDaysToSend,
    required this.virtualGiftCardMinTimeToSend,
    required this.warehouseId,
    required this.wishlist,
    required this.zaraIdQr,
    required this.isNotificationCenterEnabled,
    required this.addressSearchEngine,
    required this.deviceFingerprint,
    required this.genericRecommendationsDisabledChannels,
    required this.geoInfo,
    required this.giftCardTerms,
    required this.interactiveSizeGuide,
    required this.locale,
    required this.prosinecki,
    required this.sizeRecommender,
    required this.support,
  });

  final StoreAccountVerification? accountVerification;
  final bool? availableStoreReturnProcess;
  final CartCompositionExtraDetail? cartCompositionExtraDetail;
  final CartRelatedProducts? cartRelatedProducts;
  final int? catalogId;
  final String? colbensonUrl;
  final String? countryCode;
  final String? countryName;
  final String? discountDisclaimer;
  final bool? displayDiscountPercentage;
  final bool? displayFuturePrice;
  final bool? displayOriginalPrice;
  final EguiData? eguiData;
  final Eula? eula;
  final bool? generatePermanentSeoUrl;
  final int? giftCardStepSliderValue;
  final int? gitftCardMonthsToExpire;
  final bool? hasUserPreferredLanguage;
  final bool? hasUserRegisterPreferredLanguage;
  final bool? hidePriceNotAvailableMessage;
  final int? id;
  final InditexLinkedAccounts? inditexLinkedAccounts;
  final bool? isAbTestingAllowed;
  final bool? isAddressEvaluationEnabled;
  final bool? isCompanyAllowed;
  final bool? isDarkModeEnabled;
  final bool? isDataConsentPolicyEnabled;
  final bool? isDeleteAccountActive;
  final bool? isDonationEnabled;
  final bool? isDonationFilterEnabled;
  final bool? isElectronicInvoiceActive;
  final bool? isFacebookConversionEnabled;
  final bool? isGiftcardDetailRequired;
  final bool? isInStoreOrdersTicketScanningEnabled;
  final bool? isLiveTrackingEnabled;
  final bool? isMultiOrderReturnsDetailActive;
  final bool? isMultiOrderReturnsExchangeActive;
  final bool? isMultiOrderReturnsReturnActive;
  final bool? isNewOrderDetailEnabled;
  final bool? isNewsletterSingleOptInEnabled;
  final bool? isNewsletterSingleOptOutEnabled;
  final bool? isNewsletterUnsubscribeButtonEnabled;
  final bool? isOnlineExchangeAllowed;
  final bool? isOpenForSale;
  final bool? isOrderCancellationRequestFormEnabled;
  final bool? isPaperlessShipmentEnabled;
  final bool? isPrefixPhoneDisabled;
  final bool? isPromotionAndroidActive;
  final bool? isPromotioniOsActive;
  final bool? isRefundBankSearchAvailable;
  final bool? isRefundHelpEnabled;
  final bool? isRegionGroupEnabled;
  final bool? isRegisterEnabled;
  final bool? isRepentanceEnabled;
  final bool? isReturnInStoreMessageVisible;
  final bool? isReturnRequestFormProcessEnabled;
  final bool? isReturnRequestListAvailable;
  final bool? isShowPriceTaxMessageRequired;
  final bool? isShowTaxesRequired;
  final bool? isSocialDesign;
  final bool? isStockAccurateEnabled;
  final bool? isStockInStoresAvailable;
  final bool? isTaxIncluded;
  final bool? isUsePhoneAsLogonId;
  final bool? isVirtualGiftCardShareAllowed;
  final bool? isWalletAvailable;
  final bool? linkToRelatedStores;
  final bool? omnibusMessageEnabled;
  final String? phoneCountryCode;
  final PhysicalStores? physicalStores;
  final GiftCardTerms? privacy;
  final String? privacyUrl;
  final RecommendProviderLocation? recommendProviderLocation;
  final List<dynamic> relatedStores;
  final String? searchLang;
  final List<Section> sections;
  final List<String> sharingMethods;
  final bool? shouldShowState;
  final bool? showAdCookiesPreferences;
  final bool? showContactLinkInHelpMenu;
  final bool? showContactOnUserMenu;
  final bool? showCrossBorderPrivacyCheck;
  final bool? showPrivacityPolicyCookie;
  final bool? showSensitivePrivacyCheck;
  final String? stockBaseUrl;
  final Styles? styles;
  final List<SupportedLanguage> supportedLanguages;
  final bool? useXmediaRealWidth;
  final VirtualGiftCard? virtualGiftCard;
  final int? virtualGiftCardMaxDaysToSend;
  final int? virtualGiftCardMinTimeToSend;
  final int? warehouseId;
  final Wishlist? wishlist;
  final ZaraIdQr? zaraIdQr;
  final bool? isNotificationCenterEnabled;
  final AddressSearchEngine? addressSearchEngine;
  final DeviceFingerprint? deviceFingerprint;
  final List<dynamic> genericRecommendationsDisabledChannels;
  final GeoInfo? geoInfo;
  final GiftCardTerms? giftCardTerms;
  final InteractiveSizeGuide? interactiveSizeGuide;
  final Locale? locale;
  final Prosinecki? prosinecki;
  final SizeRecommender? sizeRecommender;
  final Support? support;

  factory Store.fromJson(Map<String, dynamic> json){
    return Store(
      accountVerification: json["accountVerification"] == null ? null : StoreAccountVerification.fromJson(json["accountVerification"]),
      availableStoreReturnProcess: json["availableStoreReturnProcess"],
      cartCompositionExtraDetail: json["cartCompositionExtraDetail"] == null ? null : CartCompositionExtraDetail.fromJson(json["cartCompositionExtraDetail"]),
      cartRelatedProducts: json["cartRelatedProducts"] == null ? null : CartRelatedProducts.fromJson(json["cartRelatedProducts"]),
      catalogId: json["catalogId"],
      colbensonUrl: json["colbensonUrl"],
      countryCode: json["countryCode"],
      countryName: json["countryName"],
      discountDisclaimer: json["discountDisclaimer"],
      displayDiscountPercentage: json["displayDiscountPercentage"],
      displayFuturePrice: json["displayFuturePrice"],
      displayOriginalPrice: json["displayOriginalPrice"],
      eguiData: json["eguiData"] == null ? null : EguiData.fromJson(json["eguiData"]),
      eula: json["eula"] == null ? null : Eula.fromJson(json["eula"]),
      generatePermanentSeoUrl: json["generatePermanentSeoUrl"],
      giftCardStepSliderValue: json["giftCardStepSliderValue"],
      gitftCardMonthsToExpire: json["gitftCardMonthsToExpire"],
      hasUserPreferredLanguage: json["hasUserPreferredLanguage"],
      hasUserRegisterPreferredLanguage: json["hasUserRegisterPreferredLanguage"],
      hidePriceNotAvailableMessage: json["hidePriceNotAvailableMessage"],
      id: json["id"],
      inditexLinkedAccounts: json["inditexLinkedAccounts"] == null ? null : InditexLinkedAccounts.fromJson(json["inditexLinkedAccounts"]),
      isAbTestingAllowed: json["isABTestingAllowed"],
      isAddressEvaluationEnabled: json["isAddressEvaluationEnabled"],
      isCompanyAllowed: json["isCompanyAllowed"],
      isDarkModeEnabled: json["isDarkModeEnabled"],
      isDataConsentPolicyEnabled: json["isDataConsentPolicyEnabled"],
      isDeleteAccountActive: json["isDeleteAccountActive"],
      isDonationEnabled: json["isDonationEnabled"],
      isDonationFilterEnabled: json["isDonationFilterEnabled"],
      isElectronicInvoiceActive: json["isElectronicInvoiceActive"],
      isFacebookConversionEnabled: json["isFacebookConversionEnabled"],
      isGiftcardDetailRequired: json["isGiftcardDetailRequired"],
      isInStoreOrdersTicketScanningEnabled: json["isInStoreOrdersTicketScanningEnabled"],
      isLiveTrackingEnabled: json["isLiveTrackingEnabled"],
      isMultiOrderReturnsDetailActive: json["isMultiOrderReturnsDetailActive"],
      isMultiOrderReturnsExchangeActive: json["isMultiOrderReturnsExchangeActive"],
      isMultiOrderReturnsReturnActive: json["isMultiOrderReturnsReturnActive"],
      isNewOrderDetailEnabled: json["isNewOrderDetailEnabled"],
      isNewsletterSingleOptInEnabled: json["isNewsletterSingleOptInEnabled"],
      isNewsletterSingleOptOutEnabled: json["isNewsletterSingleOptOutEnabled"],
      isNewsletterUnsubscribeButtonEnabled: json["isNewsletterUnsubscribeButtonEnabled"],
      isOnlineExchangeAllowed: json["isOnlineExchangeAllowed"],
      isOpenForSale: json["isOpenForSale"],
      isOrderCancellationRequestFormEnabled: json["isOrderCancellationRequestFormEnabled"],
      isPaperlessShipmentEnabled: json["isPaperlessShipmentEnabled"],
      isPrefixPhoneDisabled: json["isPrefixPhoneDisabled"],
      isPromotionAndroidActive: json["isPromotionAndroidActive"],
      isPromotioniOsActive: json["isPromotioniOSActive"],
      isRefundBankSearchAvailable: json["isRefundBankSearchAvailable"],
      isRefundHelpEnabled: json["isRefundHelpEnabled"],
      isRegionGroupEnabled: json["isRegionGroupEnabled"],
      isRegisterEnabled: json["isRegisterEnabled"],
      isRepentanceEnabled: json["isRepentanceEnabled"],
      isReturnInStoreMessageVisible: json["isReturnInStoreMessageVisible"],
      isReturnRequestFormProcessEnabled: json["isReturnRequestFormProcessEnabled"],
      isReturnRequestListAvailable: json["isReturnRequestListAvailable"],
      isShowPriceTaxMessageRequired: json["isShowPriceTaxMessageRequired"],
      isShowTaxesRequired: json["isShowTaxesRequired"],
      isSocialDesign: json["isSocialDesign"],
      isStockAccurateEnabled: json["isStockAccurateEnabled"],
      isStockInStoresAvailable: json["isStockInStoresAvailable"],
      isTaxIncluded: json["isTaxIncluded"],
      isUsePhoneAsLogonId: json["isUsePhoneAsLogonId"],
      isVirtualGiftCardShareAllowed: json["isVirtualGiftCardShareAllowed"],
      isWalletAvailable: json["isWalletAvailable"],
      linkToRelatedStores: json["linkToRelatedStores"],
      omnibusMessageEnabled: json["omnibusMessageEnabled"],
      phoneCountryCode: json["phoneCountryCode"],
      physicalStores: json["physicalStores"] == null ? null : PhysicalStores.fromJson(json["physicalStores"]),
      privacy: json["privacy"] == null ? null : GiftCardTerms.fromJson(json["privacy"]),
      privacyUrl: json["privacyUrl"],
      recommendProviderLocation: json["recommendProviderLocation"] == null ? null : RecommendProviderLocation.fromJson(json["recommendProviderLocation"]),
      relatedStores: json["relatedStores"] == null ? [] : List<dynamic>.from(json["relatedStores"]!.map((x) => x)),
      searchLang: json["searchLang"],
      sections: json["sections"] == null ? [] : List<Section>.from(json["sections"]!.map((x) => Section.fromJson(x))),
      sharingMethods: json["sharingMethods"] == null ? [] : List<String>.from(json["sharingMethods"]!.map((x) => x)),
      shouldShowState: json["shouldShowState"],
      showAdCookiesPreferences: json["showAdCookiesPreferences"],
      showContactLinkInHelpMenu: json["showContactLinkInHelpMenu"],
      showContactOnUserMenu: json["showContactOnUserMenu"],
      showCrossBorderPrivacyCheck: json["showCrossBorderPrivacyCheck"],
      showPrivacityPolicyCookie: json["showPrivacityPolicyCookie"],
      showSensitivePrivacyCheck: json["showSensitivePrivacyCheck"],
      stockBaseUrl: json["stockBaseUrl"],
      styles: json["styles"] == null ? null : Styles.fromJson(json["styles"]),
      supportedLanguages: json["supportedLanguages"] == null ? [] : List<SupportedLanguage>.from(json["supportedLanguages"]!.map((x) => SupportedLanguage.fromJson(x))),
      useXmediaRealWidth: json["useXmediaRealWidth"],
      virtualGiftCard: json["virtualGiftCard"] == null ? null : VirtualGiftCard.fromJson(json["virtualGiftCard"]),
      virtualGiftCardMaxDaysToSend: json["virtualGiftCardMaxDaysToSend"],
      virtualGiftCardMinTimeToSend: json["virtualGiftCardMinTimeToSend"],
      warehouseId: json["warehouseId"],
      wishlist: json["wishlist"] == null ? null : Wishlist.fromJson(json["wishlist"]),
      zaraIdQr: json["zaraIdQR"] == null ? null : ZaraIdQr.fromJson(json["zaraIdQR"]),
      isNotificationCenterEnabled: json["isNotificationCenterEnabled"],
      addressSearchEngine: json["addressSearchEngine"] == null ? null : AddressSearchEngine.fromJson(json["addressSearchEngine"]),
      deviceFingerprint: json["deviceFingerprint"] == null ? null : DeviceFingerprint.fromJson(json["deviceFingerprint"]),
      genericRecommendationsDisabledChannels: json["genericRecommendationsDisabledChannels"] == null ? [] : List<dynamic>.from(json["genericRecommendationsDisabledChannels"]!.map((x) => x)),
      geoInfo: json["geoInfo"] == null ? null : GeoInfo.fromJson(json["geoInfo"]),
      giftCardTerms: json["giftCardTerms"] == null ? null : GiftCardTerms.fromJson(json["giftCardTerms"]),
      interactiveSizeGuide: json["interactiveSizeGuide"] == null ? null : InteractiveSizeGuide.fromJson(json["interactiveSizeGuide"]),
      locale: json["locale"] == null ? null : Locale.fromJson(json["locale"]),
      prosinecki: json["prosinecki"] == null ? null : Prosinecki.fromJson(json["prosinecki"]),
      sizeRecommender: json["sizeRecommender"] == null ? null : SizeRecommender.fromJson(json["sizeRecommender"]),
      support: json["support"] == null ? null : Support.fromJson(json["support"]),
    );
  }

}

class StoreAccountVerification {
  StoreAccountVerification({
    required this.guestRegister,
    required this.registeredUser,
    required this.phoneLegalText,
  });

  final GuestRegister? guestRegister;
  final Wishlist? registeredUser;
  final Wishlist? phoneLegalText;

  factory StoreAccountVerification.fromJson(Map<String, dynamic> json){
    return StoreAccountVerification(
      guestRegister: json["guestRegister"] == null ? null : GuestRegister.fromJson(json["guestRegister"]),
      registeredUser: json["registeredUser"] == null ? null : Wishlist.fromJson(json["registeredUser"]),
      phoneLegalText: json["phoneLegalText"] == null ? null : Wishlist.fromJson(json["phoneLegalText"]),
    );
  }

}

class GuestRegister {
  GuestRegister({
    required this.isEnabled,
    required this.verificationMethod,
    required this.showCaptcha,
  });

  final bool? isEnabled;
  final String? verificationMethod;
  final bool? showCaptcha;

  factory GuestRegister.fromJson(Map<String, dynamic> json){
    return GuestRegister(
      isEnabled: json["isEnabled"],
      verificationMethod: json["verificationMethod"],
      showCaptcha: json["showCaptcha"],
    );
  }

}

class Wishlist {
  Wishlist({
    required this.isEnabled,
  });

  final bool? isEnabled;

  factory Wishlist.fromJson(Map<String, dynamic> json){
    return Wishlist(
      isEnabled: json["isEnabled"],
    );
  }

}

class AddressSearchEngine {
  AddressSearchEngine({
    required this.daum,
  });

  final Daum? daum;

  factory AddressSearchEngine.fromJson(Map<String, dynamic> json){
    return AddressSearchEngine(
      daum: json["daum"] == null ? null : Daum.fromJson(json["daum"]),
    );
  }

}

class Daum {
  Daum({
    required this.clientServiceUrl,
  });

  final String? clientServiceUrl;

  factory Daum.fromJson(Map<String, dynamic> json){
    return Daum(
      clientServiceUrl: json["clientServiceUrl"],
    );
  }

}

class CartCompositionExtraDetail {
  CartCompositionExtraDetail({
    required this.enabledChannels,
  });

  final List<String> enabledChannels;

  factory CartCompositionExtraDetail.fromJson(Map<String, dynamic> json){
    return CartCompositionExtraDetail(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
    );
  }

}

class CartRelatedProducts {
  CartRelatedProducts({
    required this.isEnabled,
    required this.supportedChannels,
    required this.maxItems,
  });

  final bool? isEnabled;
  final List<String> supportedChannels;
  final int? maxItems;

  factory CartRelatedProducts.fromJson(Map<String, dynamic> json){
    return CartRelatedProducts(
      isEnabled: json["isEnabled"],
      supportedChannels: json["supportedChannels"] == null ? [] : List<String>.from(json["supportedChannels"]!.map((x) => x)),
      maxItems: json["maxItems"],
    );
  }

}

class DeviceFingerprint {
  DeviceFingerprint({
    required this.alipayJavascriptRiskUrl,
    required this.deviceFingerPrintFlashActive,
    required this.fraudCybersourceBasicMerchantId,
    required this.giftcardFraudCheckActive,
    required this.hostname,
    required this.merchantId,
    required this.organizationId,
  });

  final String? alipayJavascriptRiskUrl;
  final bool? deviceFingerPrintFlashActive;
  final String? fraudCybersourceBasicMerchantId;
  final bool? giftcardFraudCheckActive;
  final String? hostname;
  final String? merchantId;
  final String? organizationId;

  factory DeviceFingerprint.fromJson(Map<String, dynamic> json){
    return DeviceFingerprint(
      alipayJavascriptRiskUrl: json["alipayJavascriptRiskUrl"],
      deviceFingerPrintFlashActive: json["deviceFingerPrintFlashActive"],
      fraudCybersourceBasicMerchantId: json["fraudCybersourceBasicMerchantId"],
      giftcardFraudCheckActive: json["giftcardFraudCheckActive"],
      hostname: json["hostname"],
      merchantId: json["merchantId"],
      organizationId: json["organizationId"],
    );
  }

}

class EguiData {
  EguiData({
    required this.assignTitleBaseUrl,
    required this.donationEntitiesListBaseUrl,
    required this.isEnabled,
  });

  final String? assignTitleBaseUrl;
  final String? donationEntitiesListBaseUrl;
  final bool? isEnabled;

  factory EguiData.fromJson(Map<String, dynamic> json){
    return EguiData(
      assignTitleBaseUrl: json["assignTitleBaseUrl"],
      donationEntitiesListBaseUrl: json["donationEntitiesListBaseUrl"],
      isEnabled: json["isEnabled"],
    );
  }

}

class Eula {
  Eula({
    required this.url,
  });

  final String? url;

  factory Eula.fromJson(Map<String, dynamic> json){
    return Eula(
      url: json["url"],
    );
  }

}

class GeoInfo {
  GeoInfo({
    required this.location,
    required this.bounds,
  });

  final Location? location;
  final Bounds? bounds;

  factory GeoInfo.fromJson(Map<String, dynamic> json){
    return GeoInfo(
      location: json["location"] == null ? null : Location.fromJson(json["location"]),
      bounds: json["bounds"] == null ? null : Bounds.fromJson(json["bounds"]),
    );
  }

}

class Bounds {
  Bounds({
    required this.northeast,
    required this.southwest,
  });

  final Location? northeast;
  final Location? southwest;

  factory Bounds.fromJson(Map<String, dynamic> json){
    return Bounds(
      northeast: json["northeast"] == null ? null : Location.fromJson(json["northeast"]),
      southwest: json["southwest"] == null ? null : Location.fromJson(json["southwest"]),
    );
  }

}

class Location {
  Location({
    required this.lat,
    required this.lng,
  });

  final double? lat;
  final double? lng;

  factory Location.fromJson(Map<String, dynamic> json){
    return Location(
      lat: json["lat"],
      lng: json["lng"],
    );
  }

}

class GiftCardTerms {
  GiftCardTerms({
    required this.url,
    required this.version,
  });

  final String? url;
  final String? version;

  factory GiftCardTerms.fromJson(Map<String, dynamic> json){
    return GiftCardTerms(
      url: json["url"],
      version: json["version"],
    );
  }

}

class InditexLinkedAccounts {
  InditexLinkedAccounts({
    required this.inditexLinkedAccountsDefault,
    required this.register,
    required this.checkout,
  });

  final Wishlist? inditexLinkedAccountsDefault;
  final Wishlist? register;
  final Wishlist? checkout;

  factory InditexLinkedAccounts.fromJson(Map<String, dynamic> json){
    return InditexLinkedAccounts(
      inditexLinkedAccountsDefault: json["default"] == null ? null : Wishlist.fromJson(json["default"]),
      register: json["register"] == null ? null : Wishlist.fromJson(json["register"]),
      checkout: json["checkout"] == null ? null : Wishlist.fromJson(json["checkout"]),
    );
  }

}

class InteractiveSizeGuide {
  InteractiveSizeGuide({
    required this.enabledChannels,
    required this.enabledSections,
  });

  final List<String> enabledChannels;
  final List<String> enabledSections;

  factory InteractiveSizeGuide.fromJson(Map<String, dynamic> json){
    return InteractiveSizeGuide(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      enabledSections: json["enabledSections"] == null ? [] : List<String>.from(json["enabledSections"]!.map((x) => x)),
    );
  }

}

class Locale {
  Locale({
    required this.currencyCode,
    required this.currencySymbol,
    required this.currencyFormat,
    required this.currencyDecimals,
    required this.currencyRate,
    required this.currencies,
    required this.isBankBicMandatory,
    required this.isBankInnMandatory,
    required this.isBankSwift,
    required this.isCompoundName,
    required this.isLastNameFirst,
  });

  final String? currencyCode;
  final String? currencySymbol;
  final String? currencyFormat;
  final int? currencyDecimals;
  final double? currencyRate;
  final List<Currency> currencies;
  final bool? isBankBicMandatory;
  final bool? isBankInnMandatory;
  final bool? isBankSwift;
  final bool? isCompoundName;
  final bool? isLastNameFirst;

  factory Locale.fromJson(Map<String, dynamic> json){
    return Locale(
      currencyCode: json["currencyCode"],
      currencySymbol: json["currencySymbol"],
      currencyFormat: json["currencyFormat"],
      currencyDecimals: json["currencyDecimals"],
      currencyRate: json["currencyRate"],
      currencies: json["currencies"] == null ? [] : List<Currency>.from(json["currencies"]!.map((x) => Currency.fromJson(x))),
      isBankBicMandatory: json["isBankBicMandatory"],
      isBankInnMandatory: json["isBankInnMandatory"],
      isBankSwift: json["isBankSwift"],
      isCompoundName: json["isCompoundName"],
      isLastNameFirst: json["isLastNameFirst"],
    );
  }

}

class Currency {
  Currency({
    required this.currencyCode,
    required this.currencySymbol,
    required this.currencyFormat,
    required this.currencyDecimals,
    required this.conversionRates,
  });

  final String? currencyCode;
  final String? currencySymbol;
  final String? currencyFormat;
  final int? currencyDecimals;
  final List<ConversionRate> conversionRates;

  factory Currency.fromJson(Map<String, dynamic> json){
    return Currency(
      currencyCode: json["currencyCode"],
      currencySymbol: json["currencySymbol"],
      currencyFormat: json["currencyFormat"],
      currencyDecimals: json["currencyDecimals"],
      conversionRates: json["conversionRates"] == null ? [] : List<ConversionRate>.from(json["conversionRates"]!.map((x) => ConversionRate.fromJson(x))),
    );
  }

}

class ConversionRate {
  ConversionRate({
    required this.from,
    required this.to,
    required this.rate,
  });

  final String? from;
  final String? to;
  final double? rate;

  factory ConversionRate.fromJson(Map<String, dynamic> json){
    return ConversionRate(
      from: json["from"],
      to: json["to"],
      rate: json["rate"],
    );
  }

}

class PhysicalStores {
  PhysicalStores({
    required this.hasPhysicalStores,
    required this.storeServices,
    required this.storeServicesBaseUrl,
    required this.services,
  });

  final bool? hasPhysicalStores;
  final List<String> storeServices;
  final String? storeServicesBaseUrl;
  final Services? services;

  factory PhysicalStores.fromJson(Map<String, dynamic> json){
    return PhysicalStores(
      hasPhysicalStores: json["hasPhysicalStores"],
      storeServices: json["storeServices"] == null ? [] : List<String>.from(json["storeServices"]!.map((x) => x)),
      storeServicesBaseUrl: json["storeServicesBaseUrl"],
      services: json["services"] == null ? null : Services.fromJson(json["services"]),
    );
  }

}

class Services {
  Services({
    required this.stockInStore,
  });

  final StockInStore? stockInStore;

  factory Services.fromJson(Map<String, dynamic> json){
    return Services(
      stockInStore: json["stockInStore"] == null ? null : StockInStore.fromJson(json["stockInStore"]),
    );
  }

}

class StockInStore {
  StockInStore({
    required this.baseUrl,
    required this.enabledChannels,
  });

  final String? baseUrl;
  final List<String> enabledChannels;

  factory StockInStore.fromJson(Map<String, dynamic> json){
    return StockInStore(
      baseUrl: json["baseUrl"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
    );
  }

}

class Prosinecki {
  Prosinecki({
    required this.webScriptUrl,
    required this.appsScriptUrl,
    required this.enabledChannels,
    required this.enabledBrandGroups,
    required this.enabledSections,
    required this.enabledFamilies,
  });

  final String? webScriptUrl;
  final String? appsScriptUrl;
  final List<String> enabledChannels;
  final List<String> enabledBrandGroups;
  final List<String> enabledSections;
  final List<String> enabledFamilies;

  factory Prosinecki.fromJson(Map<String, dynamic> json){
    return Prosinecki(
      webScriptUrl: json["webScriptUrl"],
      appsScriptUrl: json["appsScriptUrl"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      enabledBrandGroups: json["enabledBrandGroups"] == null ? [] : List<String>.from(json["enabledBrandGroups"]!.map((x) => x)),
      enabledSections: json["enabledSections"] == null ? [] : List<String>.from(json["enabledSections"]!.map((x) => x)),
      enabledFamilies: json["enabledFamilies"] == null ? [] : List<String>.from(json["enabledFamilies"]!.map((x) => x)),
    );
  }

}

class RecommendProviderLocation {
  RecommendProviderLocation({
    required this.global,
    required this.grid,
    required this.pdpGrid,
    required this.pdpToast,
    required this.cart,
    required this.searchHome,
    required this.fullPersonalizedGrid,
  });

  final Cart? global;
  final Cart? grid;
  final Cart? pdpGrid;
  final Cart? pdpToast;
  final Cart? cart;
  final Cart? searchHome;
  final FullPersonalizedGrid? fullPersonalizedGrid;

  factory RecommendProviderLocation.fromJson(Map<String, dynamic> json){
    return RecommendProviderLocation(
      global: json["global"] == null ? null : Cart.fromJson(json["global"]),
      grid: json["grid"] == null ? null : Cart.fromJson(json["grid"]),
      pdpGrid: json["pdpGrid"] == null ? null : Cart.fromJson(json["pdpGrid"]),
      pdpToast: json["pdpToast"] == null ? null : Cart.fromJson(json["pdpToast"]),
      cart: json["cart"] == null ? null : Cart.fromJson(json["cart"]),
      searchHome: json["searchHome"] == null ? null : Cart.fromJson(json["searchHome"]),
      fullPersonalizedGrid: json["fullPersonalizedGrid"] == null ? null : FullPersonalizedGrid.fromJson(json["fullPersonalizedGrid"]),
    );
  }

}

class Cart {
  Cart({
    required this.enabledSections,
    required this.provider,
    required this.timeout,
    required this.enabledChannels,
    required this.multitenantEnabledChannels,
  });

  final List<String> enabledSections;
  final String? provider;
  final int? timeout;
  final List<String> enabledChannels;
  final List<String> multitenantEnabledChannels;

  factory Cart.fromJson(Map<String, dynamic> json){
    return Cart(
      enabledSections: json["enabledSections"] == null ? [] : List<String>.from(json["enabledSections"]!.map((x) => x)),
      provider: json["provider"],
      timeout: json["timeout"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      multitenantEnabledChannels: json["multitenantEnabledChannels"] == null ? [] : List<String>.from(json["multitenantEnabledChannels"]!.map((x) => x)),
    );
  }

}

class FullPersonalizedGrid {
  FullPersonalizedGrid({
    required this.enabledSections,
    required this.enabledChannels,
    required this.multitenantEnabledChannels,
  });

  final List<String> enabledSections;
  final List<String> enabledChannels;
  final List<dynamic> multitenantEnabledChannels;

  factory FullPersonalizedGrid.fromJson(Map<String, dynamic> json){
    return FullPersonalizedGrid(
      enabledSections: json["enabledSections"] == null ? [] : List<String>.from(json["enabledSections"]!.map((x) => x)),
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      multitenantEnabledChannels: json["multitenantEnabledChannels"] == null ? [] : List<dynamic>.from(json["multitenantEnabledChannels"]!.map((x) => x)),
    );
  }

}

class Section {
  Section({
    required this.id,
    required this.name,
    required this.description,
    required this.availableFor,
    required this.engDescription,
  });

  final int? id;
  final String? name;
  final String? description;
  final List<String> availableFor;
  final String? engDescription;

  factory Section.fromJson(Map<String, dynamic> json){
    return Section(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      availableFor: json["availableFor"] == null ? [] : List<String>.from(json["availableFor"]!.map((x) => x)),
      engDescription: json["engDescription"],
    );
  }

}

class SizeRecommender {
  SizeRecommender({
    required this.sizeRecommenderDesktopScript,
    required this.isSizeRecommenderEnabled,
    required this.sizeRecommenderMobileScript,
    required this.sizeRecommenderPurchaseScript,
  });

  final String? sizeRecommenderDesktopScript;
  final bool? isSizeRecommenderEnabled;
  final String? sizeRecommenderMobileScript;
  final String? sizeRecommenderPurchaseScript;

  factory SizeRecommender.fromJson(Map<String, dynamic> json){
    return SizeRecommender(
      sizeRecommenderDesktopScript: json["sizeRecommenderDesktopScript"],
      isSizeRecommenderEnabled: json["isSizeRecommenderEnabled"],
      sizeRecommenderMobileScript: json["sizeRecommenderMobileScript"],
      sizeRecommenderPurchaseScript: json["sizeRecommenderPurchaseScript"],
    );
  }

}

class Styles {
  Styles({
    required this.colors,
    required this.checkout,
  });

  final Colors? colors;
  final StylesCheckout? checkout;

  factory Styles.fromJson(Map<String, dynamic> json){
    return Styles(
      colors: json["colors"] == null ? null : Colors.fromJson(json["colors"]),
      checkout: json["checkout"] == null ? null : StylesCheckout.fromJson(json["checkout"]),
    );
  }

}

class StylesCheckout {
  StylesCheckout({
    required this.summary,
  });

  final String? summary;

  factory StylesCheckout.fromJson(Map<String, dynamic> json){
    return StylesCheckout(
      summary: json["summary"],
    );
  }

}

class Colors {
  Colors({
    required this.priceColors,
    required this.freeShippingMethod,
  });

  final PriceColors? priceColors;
  final FreeShippingMethod? freeShippingMethod;

  factory Colors.fromJson(Map<String, dynamic> json){
    return Colors(
      priceColors: json["priceColors"] == null ? null : PriceColors.fromJson(json["priceColors"]),
      freeShippingMethod: json["freeShippingMethod"] == null ? null : FreeShippingMethod.fromJson(json["freeShippingMethod"]),
    );
  }

}

class FreeShippingMethod {
  FreeShippingMethod({
    required this.textColorHexCodeLight,
    required this.textColorHexCodeDark,
  });

  final String? textColorHexCodeLight;
  final String? textColorHexCodeDark;

  factory FreeShippingMethod.fromJson(Map<String, dynamic> json){
    return FreeShippingMethod(
      textColorHexCodeLight: json["textColorHexCodeLight"],
      textColorHexCodeDark: json["textColorHexCodeDark"],
    );
  }

}

class PriceColors {
  PriceColors({
    required this.salesPrice,
    required this.futurePrice,
    required this.highlightPrice,
  });

  final Price? salesPrice;
  final Price? futurePrice;
  final Price? highlightPrice;

  factory PriceColors.fromJson(Map<String, dynamic> json){
    return PriceColors(
      salesPrice: json["salesPrice"] == null ? null : Price.fromJson(json["salesPrice"]),
      futurePrice: json["futurePrice"] == null ? null : Price.fromJson(json["futurePrice"]),
      highlightPrice: json["highlightPrice"] == null ? null : Price.fromJson(json["highlightPrice"]),
    );
  }

}

class Price {
  Price({
    required this.backgroundColorHexCode,
    required this.textColorHexCode,
    required this.darkModeBackgroundColorHexCode,
    required this.darkModeTextColorHexCode,
  });

  final String? backgroundColorHexCode;
  final String? textColorHexCode;
  final String? darkModeBackgroundColorHexCode;
  final String? darkModeTextColorHexCode;

  factory Price.fromJson(Map<String, dynamic> json){
    return Price(
      backgroundColorHexCode: json["backgroundColorHexCode"],
      textColorHexCode: json["textColorHexCode"],
      darkModeBackgroundColorHexCode: json["darkModeBackgroundColorHexCode"],
      darkModeTextColorHexCode: json["darkModeTextColorHexCode"],
    );
  }

}

class Support {
  Support({
    required this.abTesting,
    required this.accessibilityAid,
    required this.adoptLegalChangesInOrderInfo,
    required this.chat,
    required this.clickToCall,
    required this.contact,
    required this.contactLinkInHelpMenu,
    required this.isContactLegalMessageRequired,
    required this.isContactPopupEnable,
    required this.conversionIntegration,
    required this.donation,
    required this.dropPoints,
    required this.forceHttps,
    required this.fraudConfig,
    required this.isGiftCardExpirationDisclaimerRequired,
    required this.googleServices,
    required this.tracking,
    required this.gtm,
    required this.orderList,
    required this.helpCenter,
    required this.legalDocuments,
    required this.documents,
    required this.miniContactAvailableContext,
    required this.naizfit,
    required this.onlineExchange,
    required this.orderProcess,
    required this.payment,
    required this.productsCategoryNamePosition,
    required this.productsSearch,
    required this.helpSearch,
    required this.qubit,
    required this.rgpd,
    required this.showAndroidLegacyCartPercent,
    required this.showPrivacyLinks,
    required this.stockOutSubscription,
    required this.ticketToBill,
    required this.networkClientMonitoring,
    required this.webClientPerformanceMonitoring,
    required this.wideEyes,
    required this.itxRestRelatedProducts,
    required this.checkout,
    required this.multiWishlist,
    required this.wishlistActiveChannels,
    required this.wishlistOnUserMenuActiveChannels,
    required this.wishlistSharingActiveChannels,
    required this.buyLaterActiveChannels,
    required this.categoryGrid,
    required this.isCookieMigrationEnabled,
    required this.isNewAddressFormsEnabled,
    required this.clientTelemetry,
    required this.isSrplsSubscriptionEnabled,
    required this.cookies,
    required this.cookiesConfig,
    required this.returns,
    required this.tempe3DViewer,
    required this.isIosNewGridEnabled,
    required this.productRecommendation,
    required this.accountVerification,
    required this.liveStreaming,
    required this.showCrossBorderPrivacyCheck,
    required this.legal,
    required this.showSensitivePrivacyCheck,
  });

  final AbTesting? abTesting;
  final AccessibilityAid? accessibilityAid;
  final bool? adoptLegalChangesInOrderInfo;
  final Chat? chat;
  final ClickToCall? clickToCall;
  final CartCompositionExtraDetail? contact;
  final CartCompositionExtraDetail? contactLinkInHelpMenu;
  final bool? isContactLegalMessageRequired;
  final bool? isContactPopupEnable;
  final ConversionIntegration? conversionIntegration;
  final Donation? donation;
  final DropPoints? dropPoints;
  final List<String> forceHttps;
  final FraudConfig? fraudConfig;
  final bool? isGiftCardExpirationDisclaimerRequired;
  final GoogleServices? googleServices;
  final Tracking? tracking;
  final Gtm? gtm;
  final OrderList? orderList;
  final CartCompositionExtraDetail? helpCenter;
  final List<Legal> legalDocuments;
  final List<dynamic> documents;
  final String? miniContactAvailableContext;
  final Naizfit? naizfit;
  final OnlineExchange? onlineExchange;
  final OrderProcess? orderProcess;
  final Payment? payment;
  final int? productsCategoryNamePosition;
  final ProductsSearch? productsSearch;
  final HelpSearch? helpSearch;
  final Qubit? qubit;
  final Rgpd? rgpd;
  final int? showAndroidLegacyCartPercent;
  final bool? showPrivacyLinks;
  final StockOutSubscription? stockOutSubscription;
  final TicketToBill? ticketToBill;
  final SupportNetworkClientMonitoring? networkClientMonitoring;
  final WebClientPerformanceMonitoring? webClientPerformanceMonitoring;
  final WideEyes? wideEyes;
  final InteractiveSizeGuide? itxRestRelatedProducts;
  final SupportCheckout? checkout;
  final CartCompositionExtraDetail? multiWishlist;
  final List<String> wishlistActiveChannels;
  final List<dynamic> wishlistOnUserMenuActiveChannels;
  final List<String> wishlistSharingActiveChannels;
  final List<String> buyLaterActiveChannels;
  final CategoryGrid? categoryGrid;
  final bool? isCookieMigrationEnabled;
  final bool? isNewAddressFormsEnabled;
  final ClientTelemetry? clientTelemetry;
  final bool? isSrplsSubscriptionEnabled;
  final Cookies? cookies;
  final Cookies? cookiesConfig;
  final Returns? returns;
  final Tempe3DViewer? tempe3DViewer;
  final bool? isIosNewGridEnabled;
  final SizeGuide? productRecommendation;
  final SupportAccountVerification? accountVerification;
  final LiveStreaming? liveStreaming;
  final bool? showCrossBorderPrivacyCheck;
  final Map<String, Legal> legal;
  final bool? showSensitivePrivacyCheck;

  factory Support.fromJson(Map<String, dynamic> json){
    return Support(
      abTesting: json["abTesting"] == null ? null : AbTesting.fromJson(json["abTesting"]),
      accessibilityAid: json["accessibilityAid"] == null ? null : AccessibilityAid.fromJson(json["accessibilityAid"]),
      adoptLegalChangesInOrderInfo: json["adoptLegalChangesInOrderInfo"],
      chat: json["chat"] == null ? null : Chat.fromJson(json["chat"]),
      clickToCall: json["clickToCall"] == null ? null : ClickToCall.fromJson(json["clickToCall"]),
      contact: json["contact"] == null ? null : CartCompositionExtraDetail.fromJson(json["contact"]),
      contactLinkInHelpMenu: json["contactLinkInHelpMenu"] == null ? null : CartCompositionExtraDetail.fromJson(json["contactLinkInHelpMenu"]),
      isContactLegalMessageRequired: json["isContactLegalMessageRequired"],
      isContactPopupEnable: json["isContactPopupEnable"],
      conversionIntegration: json["conversionIntegration"] == null ? null : ConversionIntegration.fromJson(json["conversionIntegration"]),
      donation: json["donation"] == null ? null : Donation.fromJson(json["donation"]),
      dropPoints: json["dropPoints"] == null ? null : DropPoints.fromJson(json["dropPoints"]),
      forceHttps: json["forceHttps"] == null ? [] : List<String>.from(json["forceHttps"]!.map((x) => x)),
      fraudConfig: json["fraudConfig"] == null ? null : FraudConfig.fromJson(json["fraudConfig"]),
      isGiftCardExpirationDisclaimerRequired: json["isGiftCardExpirationDisclaimerRequired"],
      googleServices: json["googleServices"] == null ? null : GoogleServices.fromJson(json["googleServices"]),
      tracking: json["tracking"] == null ? null : Tracking.fromJson(json["tracking"]),
      gtm: json["gtm"] == null ? null : Gtm.fromJson(json["gtm"]),
      orderList: json["orderList"] == null ? null : OrderList.fromJson(json["orderList"]),
      helpCenter: json["helpCenter"] == null ? null : CartCompositionExtraDetail.fromJson(json["helpCenter"]),
      legalDocuments: json["legalDocuments"] == null ? [] : List<Legal>.from(json["legalDocuments"]!.map((x) => Legal.fromJson(x))),
      documents: json["documents"] == null ? [] : List<dynamic>.from(json["documents"]!.map((x) => x)),
      miniContactAvailableContext: json["miniContactAvailableContext"],
      naizfit: json["naizfit"] == null ? null : Naizfit.fromJson(json["naizfit"]),
      onlineExchange: json["onlineExchange"] == null ? null : OnlineExchange.fromJson(json["onlineExchange"]),
      orderProcess: json["orderProcess"] == null ? null : OrderProcess.fromJson(json["orderProcess"]),
      payment: json["payment"] == null ? null : Payment.fromJson(json["payment"]),
      productsCategoryNamePosition: json["productsCategoryNamePosition"],
      productsSearch: json["productsSearch"] == null ? null : ProductsSearch.fromJson(json["productsSearch"]),
      helpSearch: json["helpSearch"] == null ? null : HelpSearch.fromJson(json["helpSearch"]),
      qubit: json["qubit"] == null ? null : Qubit.fromJson(json["qubit"]),
      rgpd: json["rgpd"] == null ? null : Rgpd.fromJson(json["rgpd"]),
      showAndroidLegacyCartPercent: json["showAndroidLegacyCartPercent"],
      showPrivacyLinks: json["showPrivacyLinks"],
      stockOutSubscription: json["stockOutSubscription"] == null ? null : StockOutSubscription.fromJson(json["stockOutSubscription"]),
      ticketToBill: json["ticketToBill"] == null ? null : TicketToBill.fromJson(json["ticketToBill"]),
      networkClientMonitoring: json["networkClientMonitoring"] == null ? null : SupportNetworkClientMonitoring.fromJson(json["networkClientMonitoring"]),
      webClientPerformanceMonitoring: json["webClientPerformanceMonitoring"] == null ? null : WebClientPerformanceMonitoring.fromJson(json["webClientPerformanceMonitoring"]),
      wideEyes: json["wideEyes"] == null ? null : WideEyes.fromJson(json["wideEyes"]),
      itxRestRelatedProducts: json["itxRestRelatedProducts"] == null ? null : InteractiveSizeGuide.fromJson(json["itxRestRelatedProducts"]),
      checkout: json["checkout"] == null ? null : SupportCheckout.fromJson(json["checkout"]),
      multiWishlist: json["multiWishlist"] == null ? null : CartCompositionExtraDetail.fromJson(json["multiWishlist"]),
      wishlistActiveChannels: json["wishlistActiveChannels"] == null ? [] : List<String>.from(json["wishlistActiveChannels"]!.map((x) => x)),
      wishlistOnUserMenuActiveChannels: json["wishlistOnUserMenuActiveChannels"] == null ? [] : List<dynamic>.from(json["wishlistOnUserMenuActiveChannels"]!.map((x) => x)),
      wishlistSharingActiveChannels: json["wishlistSharingActiveChannels"] == null ? [] : List<String>.from(json["wishlistSharingActiveChannels"]!.map((x) => x)),
      buyLaterActiveChannels: json["buyLaterActiveChannels"] == null ? [] : List<String>.from(json["buyLaterActiveChannels"]!.map((x) => x)),
      categoryGrid: json["categoryGrid"] == null ? null : CategoryGrid.fromJson(json["categoryGrid"]),
      isCookieMigrationEnabled: json["isCookieMigrationEnabled"],
      isNewAddressFormsEnabled: json["isNewAddressFormsEnabled"],
      clientTelemetry: json["clientTelemetry"] == null ? null : ClientTelemetry.fromJson(json["clientTelemetry"]),
      isSrplsSubscriptionEnabled: json["isSRPLSSubscriptionEnabled"],
      cookies: json["cookies"] == null ? null : Cookies.fromJson(json["cookies"]),
      cookiesConfig: json["cookiesConfig"] == null ? null : Cookies.fromJson(json["cookiesConfig"]),
      returns: json["returns"] == null ? null : Returns.fromJson(json["returns"]),
      tempe3DViewer: json["tempe3DViewer"] == null ? null : Tempe3DViewer.fromJson(json["tempe3DViewer"]),
      isIosNewGridEnabled: json["isIOSNewGridEnabled"],
      productRecommendation: json["productRecommendation"] == null ? null : SizeGuide.fromJson(json["productRecommendation"]),
      accountVerification: json["accountVerification"] == null ? null : SupportAccountVerification.fromJson(json["accountVerification"]),
      liveStreaming: json["liveStreaming"] == null ? null : LiveStreaming.fromJson(json["liveStreaming"]),
      showCrossBorderPrivacyCheck: json["showCrossBorderPrivacyCheck"],
      legal: Map.from(json["legal"]).map((k, v) => MapEntry<String, Legal>(k, Legal.fromJson(v))),
      showSensitivePrivacyCheck: json["showSensitivePrivacyCheck"],
    );
  }

}

class AbTesting {
  AbTesting({
    required this.appsClientKey,
    required this.enabled,
    required this.enabledChannels,
    required this.webMobileClientKey,
    required this.webStandardClientKey,
  });

  final String? appsClientKey;
  final bool? enabled;
  final List<String> enabledChannels;
  final String? webMobileClientKey;
  final String? webStandardClientKey;

  factory AbTesting.fromJson(Map<String, dynamic> json){
    return AbTesting(
      appsClientKey: json["appsClientKey"],
      enabled: json["enabled"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      webMobileClientKey: json["webMobileClientKey"],
      webStandardClientKey: json["webStandardClientKey"],
    );
  }

}

class AccessibilityAid {
  AccessibilityAid({
    required this.enabledChannels,
  });

  final EnabledChannels? enabledChannels;

  factory AccessibilityAid.fromJson(Map<String, dynamic> json){
    return AccessibilityAid(
      enabledChannels: json["enabledChannels"] == null ? null : EnabledChannels.fromJson(json["enabledChannels"]),
    );
  }

}

class EnabledChannels {
  EnabledChannels({
    required this.web,
  });

  final EnabledChannelsWeb? web;

  factory EnabledChannels.fromJson(Map<String, dynamic> json){
    return EnabledChannels(
      web: json["web"] == null ? null : EnabledChannelsWeb.fromJson(json["web"]),
    );
  }

}

class EnabledChannelsWeb {
  EnabledChannelsWeb({
    required this.en,
  });

  final En? en;

  factory EnabledChannelsWeb.fromJson(Map<String, dynamic> json){
    return EnabledChannelsWeb(
      en: json["en"] == null ? null : En.fromJson(json["en"]),
    );
  }

}

class En {
  En({
    required this.siteKey,
    required this.position,
  });

  final String? siteKey;
  final String? position;

  factory En.fromJson(Map<String, dynamic> json){
    return En(
      siteKey: json["siteKey"],
      position: json["position"],
    );
  }

}

class SupportAccountVerification {
  SupportAccountVerification({
    required this.registrationProcessActiveChannels,
    required this.registrationProcessV2ActiveChannels,
    required this.registrationProcessV2VerificationMethod,
    required this.registeredActiveChannels,
    required this.registrationProcessCaptchaActiveChannels,
    required this.phoneLegalTextActiveChannels,
  });

  final List<dynamic> registrationProcessActiveChannels;
  final List<String> registrationProcessV2ActiveChannels;
  final String? registrationProcessV2VerificationMethod;
  final List<String> registeredActiveChannels;
  final List<dynamic> registrationProcessCaptchaActiveChannels;
  final List<String> phoneLegalTextActiveChannels;

  factory SupportAccountVerification.fromJson(Map<String, dynamic> json){
    return SupportAccountVerification(
      registrationProcessActiveChannels: json["registrationProcessActiveChannels"] == null ? [] : List<dynamic>.from(json["registrationProcessActiveChannels"]!.map((x) => x)),
      registrationProcessV2ActiveChannels: json["registrationProcessV2ActiveChannels"] == null ? [] : List<String>.from(json["registrationProcessV2ActiveChannels"]!.map((x) => x)),
      registrationProcessV2VerificationMethod: json["registrationProcessV2VerificationMethod"],
      registeredActiveChannels: json["registeredActiveChannels"] == null ? [] : List<String>.from(json["registeredActiveChannels"]!.map((x) => x)),
      registrationProcessCaptchaActiveChannels: json["registrationProcessCaptchaActiveChannels"] == null ? [] : List<dynamic>.from(json["registrationProcessCaptchaActiveChannels"]!.map((x) => x)),
      phoneLegalTextActiveChannels: json["phoneLegalTextActiveChannels"] == null ? [] : List<String>.from(json["phoneLegalTextActiveChannels"]!.map((x) => x)),
    );
  }

}

class CategoryGrid {
  CategoryGrid({
    required this.webMobile,
  });

  final WebMobile? webMobile;

  factory CategoryGrid.fromJson(Map<String, dynamic> json){
    return CategoryGrid(
      webMobile: json["webMobile"] == null ? null : WebMobile.fromJson(json["webMobile"]),
    );
  }

}

class WebMobile {
  WebMobile({
    required this.clientRows,
    required this.numPreloadMedia,
  });

  final int? clientRows;
  final int? numPreloadMedia;

  factory WebMobile.fromJson(Map<String, dynamic> json){
    return WebMobile(
      clientRows: json["clientRows"],
      numPreloadMedia: json["numPreloadMedia"],
    );
  }

}

class Chat {
  Chat({
    required this.integratedChatLangIds,
    required this.integratedChatUrl,
    required this.isChatEnabled,
    required this.isMochatEnabled,
    required this.itxWebChatMainUrl,
    required this.registeredChatBasePath,
    required this.dynamicsChatConfig,
    required this.isDynamicsChatEnabled,
  });

  final List<int> integratedChatLangIds;
  final String? integratedChatUrl;
  final bool? isChatEnabled;
  final bool? isMochatEnabled;
  final String? itxWebChatMainUrl;
  final String? registeredChatBasePath;
  final DynamicsChatConfig? dynamicsChatConfig;
  final bool? isDynamicsChatEnabled;

  factory Chat.fromJson(Map<String, dynamic> json){
    return Chat(
      integratedChatLangIds: json["integratedChatLangIds"] == null ? [] : List<int>.from(json["integratedChatLangIds"]!.map((x) => x)),
      integratedChatUrl: json["integratedChatUrl"],
      isChatEnabled: json["isChatEnabled"],
      isMochatEnabled: json["isMochatEnabled"],
      itxWebChatMainUrl: json["itxWebChatMainUrl"],
      registeredChatBasePath: json["registeredChatBasePath"],
      dynamicsChatConfig: json["dynamicsChatConfig"] == null ? null : DynamicsChatConfig.fromJson(json["dynamicsChatConfig"]),
      isDynamicsChatEnabled: json["isDynamicsChatEnabled"],
    );
  }

}

class DynamicsChatConfig {
  DynamicsChatConfig({
    required this.orgId,
    required this.orgUrl,
    required this.appId,
  });

  final String? orgId;
  final String? orgUrl;
  final String? appId;

  factory DynamicsChatConfig.fromJson(Map<String, dynamic> json){
    return DynamicsChatConfig(
      orgId: json["orgId"],
      orgUrl: json["orgUrl"],
      appId: json["appId"],
    );
  }

}

class SupportCheckout {
  SupportCheckout({
    required this.disabledCartContinue,
    required this.forceShippingMethodSelection,
    required this.quickPurchase,
    required this.blockSerialReturners,
    required this.postPayment,
    required this.genericPunchout,
    required this.deliveryGroupsEnabled,
    required this.getPurchaseAttempt,
    required this.deliveryGroup,
    required this.isApplePayEnabled,
    required this.walletPayment,
  });

  final bool? disabledCartContinue;
  final bool? forceShippingMethodSelection;
  final QuickPurchase? quickPurchase;
  final CartCompositionExtraDetail? blockSerialReturners;
  final DeliveryGroupsEnabled? postPayment;
  final DeliveryGroupsEnabled? genericPunchout;
  final DeliveryGroupsEnabled? deliveryGroupsEnabled;
  final DeliveryGroupsEnabled? getPurchaseAttempt;
  final DeliveryGroup? deliveryGroup;
  final CartCompositionExtraDetail? isApplePayEnabled;
  final WalletPayment? walletPayment;

  factory SupportCheckout.fromJson(Map<String, dynamic> json){
    return SupportCheckout(
      disabledCartContinue: json["disabledCartContinue"],
      forceShippingMethodSelection: json["forceShippingMethodSelection"],
      quickPurchase: json["quickPurchase"] == null ? null : QuickPurchase.fromJson(json["quickPurchase"]),
      blockSerialReturners: json["blockSerialReturners"] == null ? null : CartCompositionExtraDetail.fromJson(json["blockSerialReturners"]),
      postPayment: json["postPayment"] == null ? null : DeliveryGroupsEnabled.fromJson(json["postPayment"]),
      genericPunchout: json["genericPunchout"] == null ? null : DeliveryGroupsEnabled.fromJson(json["genericPunchout"]),
      deliveryGroupsEnabled: json["deliveryGroupsEnabled"] == null ? null : DeliveryGroupsEnabled.fromJson(json["deliveryGroupsEnabled"]),
      getPurchaseAttempt: json["getPurchaseAttempt"] == null ? null : DeliveryGroupsEnabled.fromJson(json["getPurchaseAttempt"]),
      deliveryGroup: json["deliveryGroup"] == null ? null : DeliveryGroup.fromJson(json["deliveryGroup"]),
      isApplePayEnabled: json["isApplePayEnabled"] == null ? null : CartCompositionExtraDetail.fromJson(json["isApplePayEnabled"]),
      walletPayment: json["walletPayment"] == null ? null : WalletPayment.fromJson(json["walletPayment"]),
    );
  }

}

class DeliveryGroup {
  DeliveryGroup({
    required this.defaultVariant,
    required this.postShipping,
    required this.shippingByDelivery,
  });

  final String? defaultVariant;
  final DeliveryGroupsEnabled? postShipping;
  final DeliveryGroupsEnabled? shippingByDelivery;

  factory DeliveryGroup.fromJson(Map<String, dynamic> json){
    return DeliveryGroup(
      defaultVariant: json["defaultVariant"],
      postShipping: json["postShipping"] == null ? null : DeliveryGroupsEnabled.fromJson(json["postShipping"]),
      shippingByDelivery: json["shippingByDelivery"] == null ? null : DeliveryGroupsEnabled.fromJson(json["shippingByDelivery"]),
    );
  }

}

class DeliveryGroupsEnabled {
  DeliveryGroupsEnabled({
    required this.supportedChannels,
  });

  final List<String> supportedChannels;

  factory DeliveryGroupsEnabled.fromJson(Map<String, dynamic> json){
    return DeliveryGroupsEnabled(
      supportedChannels: json["supportedChannels"] == null ? [] : List<String>.from(json["supportedChannels"]!.map((x) => x)),
    );
  }

}

class QuickPurchase {
  QuickPurchase({
    required this.isEnabled,
    required this.supportedChannels,
  });

  final bool? isEnabled;
  final List<String> supportedChannels;

  factory QuickPurchase.fromJson(Map<String, dynamic> json){
    return QuickPurchase(
      isEnabled: json["isEnabled"],
      supportedChannels: json["supportedChannels"] == null ? [] : List<String>.from(json["supportedChannels"]!.map((x) => x)),
    );
  }

}

class WalletPayment {
  WalletPayment({
    required this.enabledChannels,
    required this.supportedFlows,
  });

  final List<String> enabledChannels;
  final List<String> supportedFlows;

  factory WalletPayment.fromJson(Map<String, dynamic> json){
    return WalletPayment(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      supportedFlows: json["supportedFlows"] == null ? [] : List<String>.from(json["supportedFlows"]!.map((x) => x)),
    );
  }

}

class ClickToCall {
  ClickToCall({
    required this.clickToCallBaseUrl,
    required this.clickToCallLangs,
    required this.clickToCallLangsId,
  });

  final String? clickToCallBaseUrl;
  final List<dynamic> clickToCallLangs;
  final List<dynamic> clickToCallLangsId;

  factory ClickToCall.fromJson(Map<String, dynamic> json){
    return ClickToCall(
      clickToCallBaseUrl: json["clickToCallBaseUrl"],
      clickToCallLangs: json["clickToCallLangs"] == null ? [] : List<dynamic>.from(json["clickToCallLangs"]!.map((x) => x)),
      clickToCallLangsId: json["clickToCallLangsId"] == null ? [] : List<dynamic>.from(json["clickToCallLangsId"]!.map((x) => x)),
    );
  }

}

class ClientTelemetry {
  ClientTelemetry({
    required this.pageViewsEnabledChannels,
    required this.addToCartEnabledChannels,
    required this.purchaseConfirmedEnabledChannels,
  });

  final List<String> pageViewsEnabledChannels;
  final List<String> addToCartEnabledChannels;
  final List<String> purchaseConfirmedEnabledChannels;

  factory ClientTelemetry.fromJson(Map<String, dynamic> json){
    return ClientTelemetry(
      pageViewsEnabledChannels: json["pageViewsEnabledChannels"] == null ? [] : List<String>.from(json["pageViewsEnabledChannels"]!.map((x) => x)),
      addToCartEnabledChannels: json["addToCartEnabledChannels"] == null ? [] : List<String>.from(json["addToCartEnabledChannels"]!.map((x) => x)),
      purchaseConfirmedEnabledChannels: json["purchaseConfirmedEnabledChannels"] == null ? [] : List<String>.from(json["purchaseConfirmedEnabledChannels"]!.map((x) => x)),
    );
  }

}

class ConversionIntegration {
  ConversionIntegration({
    required this.adWords,
    required this.doubleClick,
    required this.facebook,
    required this.yahoo,
  });

  final AdWords? adWords;
  final SizeGuide? doubleClick;
  final Facebook? facebook;
  final Yahoo? yahoo;

  factory ConversionIntegration.fromJson(Map<String, dynamic> json){
    return ConversionIntegration(
      adWords: json["adWords"] == null ? null : AdWords.fromJson(json["adWords"]),
      doubleClick: json["doubleClick"] == null ? null : SizeGuide.fromJson(json["doubleClick"]),
      facebook: json["facebook"] == null ? null : Facebook.fromJson(json["facebook"]),
      yahoo: json["yahoo"] == null ? null : Yahoo.fromJson(json["yahoo"]),
    );
  }

}

class AdWords {
  AdWords({
    required this.accountId,
    required this.baseImageUrl,
    required this.color,
    required this.enabled,
    required this.format,
    required this.label,
    required this.scriptUrl,
    required this.scriptUrlAsync,
  });

  final String? accountId;
  final String? baseImageUrl;
  final String? color;
  final bool? enabled;
  final String? format;
  final String? label;
  final String? scriptUrl;
  final String? scriptUrlAsync;

  factory AdWords.fromJson(Map<String, dynamic> json){
    return AdWords(
      accountId: json["accountId"],
      baseImageUrl: json["baseImageUrl"],
      color: json["color"],
      enabled: json["enabled"],
      format: json["format"],
      label: json["label"],
      scriptUrl: json["scriptUrl"],
      scriptUrlAsync: json["scriptUrlAsync"],
    );
  }

}

class Facebook {
  Facebook({
    required this.accountId,
    required this.enabled,
    required this.scriptUrl,
  });

  final String? accountId;
  final bool? enabled;
  final String? scriptUrl;

  factory Facebook.fromJson(Map<String, dynamic> json){
    return Facebook(
      accountId: json["accountId"],
      enabled: json["enabled"],
      scriptUrl: json["scriptUrl"],
    );
  }

}

class Yahoo {
  Yahoo({
    required this.accountId,
    required this.baseImageUrl,
    required this.conversionId,
    required this.enabled,
    required this.label,
    required this.scriptUrl,
  });

  final String? accountId;
  final String? baseImageUrl;
  final String? conversionId;
  final bool? enabled;
  final String? label;
  final String? scriptUrl;

  factory Yahoo.fromJson(Map<String, dynamic> json){
    return Yahoo(
      accountId: json["accountId"],
      baseImageUrl: json["baseImageUrl"],
      conversionId: json["conversionId"],
      enabled: json["enabled"],
      label: json["label"],
      scriptUrl: json["scriptUrl"],
    );
  }

}

class Cookies {
  Cookies({
    required this.cookiesConsent,
  });

  final CookiesCookiesConsent? cookiesConsent;

  factory Cookies.fromJson(Map<String, dynamic> json){
    return Cookies(
      cookiesConsent: json["cookiesConsent"] == null ? null : CookiesCookiesConsent.fromJson(json["cookiesConsent"]),
    );
  }

}

class CookiesCookiesConsent {
  CookiesCookiesConsent({
    required this.enabledChannels,
    required this.oneTrust,
  });

  final List<String> enabledChannels;
  final OneTrust? oneTrust;

  factory CookiesCookiesConsent.fromJson(Map<String, dynamic> json){
    return CookiesCookiesConsent(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      oneTrust: json["oneTrust"] == null ? null : OneTrust.fromJson(json["oneTrust"]),
    );
  }

}

class OneTrust {
  OneTrust({
    required this.ids,
  });

  final Ids? ids;

  factory OneTrust.fromJson(Map<String, dynamic> json){
    return OneTrust(
      ids: json["ids"] == null ? null : Ids.fromJson(json["ids"]),
    );
  }

}

class Ids {
  Ids({
    required this.web,
    required this.webMobile,
    required this.ios,
    required this.android,
    required this.miniP,
  });

  final String? web;
  final String? webMobile;
  final String? ios;
  final String? android;
  final String? miniP;

  factory Ids.fromJson(Map<String, dynamic> json){
    return Ids(
      web: json["web"],
      webMobile: json["web-mobile"],
      ios: json["ios"],
      android: json["android"],
      miniP: json["mini-p"],
    );
  }

}

class Donation {
  Donation({
    required this.isTermsLinkEnabled,
  });

  final bool? isTermsLinkEnabled;

  factory Donation.fromJson(Map<String, dynamic> json){
    return Donation(
      isTermsLinkEnabled: json["isTermsLinkEnabled"],
    );
  }

}

class DropPoints {
  DropPoints({
    required this.showCode,
  });

  final bool? showCode;

  factory DropPoints.fromJson(Map<String, dynamic> json){
    return DropPoints(
      showCode: json["showCode"],
    );
  }

}

class FraudConfig {
  FraudConfig({
    required this.isRiskifiedActive,
  });

  final bool? isRiskifiedActive;

  factory FraudConfig.fromJson(Map<String, dynamic> json){
    return FraudConfig(
      isRiskifiedActive: json["isRiskifiedActive"],
    );
  }

}

class GoogleServices {
  GoogleServices({
    required this.key,
  });

  final String? key;

  factory GoogleServices.fromJson(Map<String, dynamic> json){
    return GoogleServices(
      key: json["key"],
    );
  }

}

class Gtm {
  Gtm({
    required this.accountId,
    required this.enabled,
  });

  final String? accountId;
  final bool? enabled;

  factory Gtm.fromJson(Map<String, dynamic> json){
    return Gtm(
      accountId: json["accountId"],
      enabled: json["enabled"],
    );
  }

}

class HelpSearch {
  HelpSearch({
    required this.appId,
    required this.apiKey,
    required this.indexName,
    required this.minCharsToQuery,
    required this.minMillisToQuery,
    required this.showSuggestionWhenNoResults,
    required this.articleKeyMappings,
  });

  final String? appId;
  final String? apiKey;
  final String? indexName;
  final int? minCharsToQuery;
  final int? minMillisToQuery;
  final bool? showSuggestionWhenNoResults;
  final List<dynamic> articleKeyMappings;

  factory HelpSearch.fromJson(Map<String, dynamic> json){
    return HelpSearch(
      appId: json["appId"],
      apiKey: json["apiKey"],
      indexName: json["indexName"],
      minCharsToQuery: json["minCharsToQuery"],
      minMillisToQuery: json["minMillisToQuery"],
      showSuggestionWhenNoResults: json["showSuggestionWhenNoResults"],
      articleKeyMappings: json["articleKeyMappings"] == null ? [] : List<dynamic>.from(json["articleKeyMappings"]!.map((x) => x)),
    );
  }

}

class Legal {
  Legal({
    required this.kind,
    required this.label,
    required this.url,
    required this.version,
    required this.showWarningDuringDays,
    required this.visibleAt,
  });

  final String? kind;
  final String? label;
  final String? url;
  final String? version;
  final int? showWarningDuringDays;
  final List<String> visibleAt;

  factory Legal.fromJson(Map<String, dynamic> json){
    return Legal(
      kind: json["kind"],
      label: json["label"],
      url: json["url"],
      version: json["version"],
      showWarningDuringDays: json["showWarningDuringDays"],
      visibleAt: json["visibleAt"] == null ? [] : List<String>.from(json["visibleAt"]!.map((x) => x)),
    );
  }

}

class LiveStreaming {
  LiveStreaming({
    required this.scriptUrls,
    required this.enabledChannels,
  });

  final ScriptUrls? scriptUrls;
  final List<String> enabledChannels;

  factory LiveStreaming.fromJson(Map<String, dynamic> json){
    return LiveStreaming(
      scriptUrls: json["scriptUrls"] == null ? null : ScriptUrls.fromJson(json["scriptUrls"]),
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
    );
  }

}

class ScriptUrls {
  ScriptUrls({
    required this.web,
    required this.apps,
  });

  final String? web;
  final String? apps;

  factory ScriptUrls.fromJson(Map<String, dynamic> json){
    return ScriptUrls(
      web: json["web"],
      apps: json["apps"],
    );
  }

}

class Naizfit {
  Naizfit({
    required this.webScriptUrl,
    required this.appsScriptUrl,
    required this.enabledChannels,
  });

  final String? webScriptUrl;
  final String? appsScriptUrl;
  final List<dynamic> enabledChannels;

  factory Naizfit.fromJson(Map<String, dynamic> json){
    return Naizfit(
      webScriptUrl: json["webScriptUrl"],
      appsScriptUrl: json["appsScriptUrl"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<dynamic>.from(json["enabledChannels"]!.map((x) => x)),
    );
  }

}

class SupportNetworkClientMonitoring {
  SupportNetworkClientMonitoring({
    required this.web,
  });

  final NetworkClientMonitoringWeb? web;

  factory SupportNetworkClientMonitoring.fromJson(Map<String, dynamic> json){
    return SupportNetworkClientMonitoring(
      web: json["web"] == null ? null : NetworkClientMonitoringWeb.fromJson(json["web"]),
    );
  }

}

class NetworkClientMonitoringWeb {
  NetworkClientMonitoringWeb({
    required this.enabled,
    required this.interval,
  });

  final bool? enabled;
  final int? interval;

  factory NetworkClientMonitoringWeb.fromJson(Map<String, dynamic> json){
    return NetworkClientMonitoringWeb(
      enabled: json["enabled"],
      interval: json["interval"],
    );
  }

}

class OnlineExchange {
  OnlineExchange({
    required this.isEnabled,
    required this.enabledChannels,
    required this.maxExchangeUnitsCount,
    required this.isMobileNewProcessForGuestAvailable,
    required this.isNewWindowForGuestAvailable,
    required this.isShippingEditable,
  });

  final bool? isEnabled;
  final List<String> enabledChannels;
  final int? maxExchangeUnitsCount;
  final bool? isMobileNewProcessForGuestAvailable;
  final bool? isNewWindowForGuestAvailable;
  final bool? isShippingEditable;

  factory OnlineExchange.fromJson(Map<String, dynamic> json){
    return OnlineExchange(
      isEnabled: json["isEnabled"],
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      maxExchangeUnitsCount: json["maxExchangeUnitsCount"],
      isMobileNewProcessForGuestAvailable: json["isMobileNewProcessForGuestAvailable"],
      isNewWindowForGuestAvailable: json["isNewWindowForGuestAvailable"],
      isShippingEditable: json["isShippingEditable"],
    );
  }

}

class OrderList {
  OrderList({
    required this.apiVersion,
  });

  final String? apiVersion;

  factory OrderList.fromJson(Map<String, dynamic> json){
    return OrderList(
      apiVersion: json["apiVersion"],
    );
  }

}

class OrderProcess {
  OrderProcess({
    required this.edgeImplementationStatus,
    required this.isFullBillingAddresNeeded,
    required this.restylingCheckoutStatus,
    required this.restylingCheckoutUrl,
    required this.restylingLegacyCheckoutUrl,
  });

  final EdgeImplementationStatus? edgeImplementationStatus;
  final bool? isFullBillingAddresNeeded;
  final String? restylingCheckoutStatus;
  final String? restylingCheckoutUrl;
  final String? restylingLegacyCheckoutUrl;

  factory OrderProcess.fromJson(Map<String, dynamic> json){
    return OrderProcess(
      edgeImplementationStatus: json["edgeImplementationStatus"] == null ? null : EdgeImplementationStatus.fromJson(json["edgeImplementationStatus"]),
      isFullBillingAddresNeeded: json["isFullBillingAddresNeeded"],
      restylingCheckoutStatus: json["restylingCheckoutStatus"],
      restylingCheckoutUrl: json["restylingCheckoutUrl"],
      restylingLegacyCheckoutUrl: json["restylingLegacyCheckoutUrl"],
    );
  }

}

class EdgeImplementationStatus {
  EdgeImplementationStatus({
    required this.webMobile,
    required this.webStandard,
  });

  final String? webMobile;
  final String? webStandard;

  factory EdgeImplementationStatus.fromJson(Map<String, dynamic> json){
    return EdgeImplementationStatus(
      webMobile: json["webMobile"],
      webStandard: json["webStandard"],
    );
  }

}

class Payment {
  Payment({
    required this.cardinalDeviceDataCollectionUrl,
    required this.creditCardExpirationMonthsThresold,
    required this.isShowPaymentExchangeWarningEnable,
    required this.kcpBinaryInstallerUrl,
    required this.kcpJsUrl,
    required this.kcpWebPluginUrl,
    required this.klarnaWidgetUrl,
    required this.offlineExpirationDelayTime,
  });

  final String? cardinalDeviceDataCollectionUrl;
  final int? creditCardExpirationMonthsThresold;
  final bool? isShowPaymentExchangeWarningEnable;
  final String? kcpBinaryInstallerUrl;
  final String? kcpJsUrl;
  final String? kcpWebPluginUrl;
  final String? klarnaWidgetUrl;
  final int? offlineExpirationDelayTime;

  factory Payment.fromJson(Map<String, dynamic> json){
    return Payment(
      cardinalDeviceDataCollectionUrl: json["cardinalDeviceDataCollectionUrl"],
      creditCardExpirationMonthsThresold: json["creditCardExpirationMonthsThresold"],
      isShowPaymentExchangeWarningEnable: json["isShowPaymentExchangeWarningEnable"],
      kcpBinaryInstallerUrl: json["kcpBinaryInstallerUrl"],
      kcpJsUrl: json["kcpJsUrl"],
      kcpWebPluginUrl: json["kcpWebPluginUrl"],
      klarnaWidgetUrl: json["klarnaWidgetUrl"],
      offlineExpirationDelayTime: json["offlineExpirationDelayTime"],
    );
  }

}

class ProductsSearch {
  ProductsSearch({
    required this.provider,
    required this.maxPrefetchedNextQueries,
    required this.searchByImage,
    required this.urls,
    required this.filtering,
    required this.query,
    required this.engineName,
    required this.engines,
  });

  final String? provider;
  final int? maxPrefetchedNextQueries;
  final SearchByImage? searchByImage;
  final EngineUrls? urls;
  final Filtering? filtering;
  final List<Query> query;
  final String? engineName;
  final List<Engine> engines;

  factory ProductsSearch.fromJson(Map<String, dynamic> json){
    return ProductsSearch(
      provider: json["provider"],
      maxPrefetchedNextQueries: json["maxPrefetchedNextQueries"],
      searchByImage: json["searchByImage"] == null ? null : SearchByImage.fromJson(json["searchByImage"]),
      urls: json["urls"] == null ? null : EngineUrls.fromJson(json["urls"]),
      filtering: json["filtering"] == null ? null : Filtering.fromJson(json["filtering"]),
      query: json["query"] == null ? [] : List<Query>.from(json["query"]!.map((x) => Query.fromJson(x))),
      engineName: json["engineName"],
      engines: json["engines"] == null ? [] : List<Engine>.from(json["engines"]!.map((x) => Engine.fromJson(x))),
    );
  }

}

class Engine {
  Engine({
    required this.name,
    required this.urls,
    required this.query,
  });

  final String? name;
  final EngineUrls? urls;
  final List<Query> query;

  factory Engine.fromJson(Map<String, dynamic> json){
    return Engine(
      name: json["name"],
      urls: json["urls"] == null ? null : EngineUrls.fromJson(json["urls"]),
      query: json["query"] == null ? [] : List<Query>.from(json["query"]!.map((x) => Query.fromJson(x))),
    );
  }

}

class Query {
  Query({
    required this.name,
    required this.value,
  });

  final String? name;
  final List<String> value;

  factory Query.fromJson(Map<String, dynamic> json){
    return Query(
      name: json["name"],
      value: json["value"] == null ? [] : List<String>.from(json["value"]!.map((x) => x)),
    );
  }

}

class EngineUrls {
  EngineUrls({
    required this.autocomplete,
    required this.empathize,
    required this.ping,
    required this.search,
    required this.nextQueries,
  });

  final String? autocomplete;
  final String? empathize;
  final String? ping;
  final String? search;
  final String? nextQueries;

  factory EngineUrls.fromJson(Map<String, dynamic> json){
    return EngineUrls(
      autocomplete: json["autocomplete"],
      empathize: json["empathize"],
      ping: json["ping"],
      search: json["search"],
      nextQueries: json["nextQueries"],
    );
  }

}

class Filtering {
  Filtering({
    required this.enabledStatus,
    required this.allowedFacets,
  });

  final EnabledStatus? enabledStatus;
  final List<String> allowedFacets;

  factory Filtering.fromJson(Map<String, dynamic> json){
    return Filtering(
      enabledStatus: json["enabledStatus"] == null ? null : EnabledStatus.fromJson(json["enabledStatus"]),
      allowedFacets: json["allowedFacets"] == null ? [] : List<String>.from(json["allowedFacets"]!.map((x) => x)),
    );
  }

}

class EnabledStatus {
  EnabledStatus({
    required this.webMobile,
    required this.webStandard,
    required this.iOs,
    required this.android,
  });

  final String? webMobile;
  final String? webStandard;
  final String? iOs;
  final String? android;

  factory EnabledStatus.fromJson(Map<String, dynamic> json){
    return EnabledStatus(
      webMobile: json["webMobile"],
      webStandard: json["webStandard"],
      iOs: json["iOS"],
      android: json["android"],
    );
  }

}

class SearchByImage {
  SearchByImage({
    required this.enabled,
    required this.host,
    required this.apiKey,
  });

  final bool? enabled;
  final String? host;
  final String? apiKey;

  factory SearchByImage.fromJson(Map<String, dynamic> json){
    return SearchByImage(
      enabled: json["enabled"],
      host: json["host"],
      apiKey: json["apiKey"],
    );
  }

}

class Qubit {
  Qubit({
    required this.isQubitEnabled,
    required this.qubitScriptUrl,
  });

  final bool? isQubitEnabled;
  final String? qubitScriptUrl;

  factory Qubit.fromJson(Map<String, dynamic> json){
    return Qubit(
      isQubitEnabled: json["isQubitEnabled"],
      qubitScriptUrl: json["qubitScriptUrl"],
    );
  }

}

class Returns {
  Returns({
    required this.paymentMethodsWarning,
    required this.returnRequestForm,
  });

  final PaymentMethodsWarning? paymentMethodsWarning;
  final CartCompositionExtraDetail? returnRequestForm;

  factory Returns.fromJson(Map<String, dynamic> json){
    return Returns(
      paymentMethodsWarning: json["paymentMethodsWarning"] == null ? null : PaymentMethodsWarning.fromJson(json["paymentMethodsWarning"]),
      returnRequestForm: json["returnRequestForm"] == null ? null : CartCompositionExtraDetail.fromJson(json["returnRequestForm"]),
    );
  }

}

class PaymentMethodsWarning {
  PaymentMethodsWarning({
    required this.enabledChannels,
    required this.methodsAllowed,
  });

  final List<dynamic> enabledChannels;
  final List<dynamic> methodsAllowed;

  factory PaymentMethodsWarning.fromJson(Map<String, dynamic> json){
    return PaymentMethodsWarning(
      enabledChannels: json["enabledChannels"] == null ? [] : List<dynamic>.from(json["enabledChannels"]!.map((x) => x)),
      methodsAllowed: json["methodsAllowed"] == null ? [] : List<dynamic>.from(json["methodsAllowed"]!.map((x) => x)),
    );
  }

}

class Rgpd {
  Rgpd({
    required this.isEnabled,
    required this.showPopup,
  });

  final bool? isEnabled;
  final bool? showPopup;

  factory Rgpd.fromJson(Map<String, dynamic> json){
    return Rgpd(
      isEnabled: json["isEnabled"],
      showPopup: json["showPopup"],
    );
  }

}

class StockOutSubscription {
  StockOutSubscription({
    required this.shouldConfirmEmail,
  });

  final bool? shouldConfirmEmail;

  factory StockOutSubscription.fromJson(Map<String, dynamic> json){
    return StockOutSubscription(
      shouldConfirmEmail: json["shouldConfirmEmail"],
    );
  }

}

class Tempe3DViewer {
  Tempe3DViewer({
    required this.urls,
  });

  final Tempe3DViewerUrls? urls;

  factory Tempe3DViewer.fromJson(Map<String, dynamic> json){
    return Tempe3DViewer(
      urls: json["urls"] == null ? null : Tempe3DViewerUrls.fromJson(json["urls"]),
    );
  }

}

class Tempe3DViewerUrls {
  Tempe3DViewerUrls({
    required this.react,
    required this.standalone,
  });

  final String? react;
  final String? standalone;

  factory Tempe3DViewerUrls.fromJson(Map<String, dynamic> json){
    return Tempe3DViewerUrls(
      react: json["react"],
      standalone: json["standalone"],
    );
  }

}

class TicketToBill {
  TicketToBill({
    required this.captchaUrl,
    required this.createInvoiceUrl,
    required this.isEnabled,
    required this.ticketImageUrl,
  });

  final String? captchaUrl;
  final String? createInvoiceUrl;
  final bool? isEnabled;
  final String? ticketImageUrl;

  factory TicketToBill.fromJson(Map<String, dynamic> json){
    return TicketToBill(
      captchaUrl: json["captchaUrl"],
      createInvoiceUrl: json["createInvoiceUrl"],
      isEnabled: json["isEnabled"],
      ticketImageUrl: json["ticketImageUrl"],
    );
  }

}

class Tracking {
  Tracking({
    required this.finalMilestones,
    required this.liveTracking,
    required this.milestonesOrder,
  });

  final List<String> finalMilestones;
  final CartCompositionExtraDetail? liveTracking;
  final List<String> milestonesOrder;

  factory Tracking.fromJson(Map<String, dynamic> json){
    return Tracking(
      finalMilestones: json["finalMilestones"] == null ? [] : List<String>.from(json["finalMilestones"]!.map((x) => x)),
      liveTracking: json["liveTracking"] == null ? null : CartCompositionExtraDetail.fromJson(json["liveTracking"]),
      milestonesOrder: json["milestonesOrder"] == null ? [] : List<String>.from(json["milestonesOrder"]!.map((x) => x)),
    );
  }

}

class WebClientPerformanceMonitoring {
  WebClientPerformanceMonitoring({
    required this.enabled,
    required this.webMobileKey,
    required this.webStandardKey,
  });

  final bool? enabled;
  final String? webMobileKey;
  final String? webStandardKey;

  factory WebClientPerformanceMonitoring.fromJson(Map<String, dynamic> json){
    return WebClientPerformanceMonitoring(
      enabled: json["enabled"],
      webMobileKey: json["webMobileKey"],
      webStandardKey: json["webStandardKey"],
    );
  }

}

class WideEyes {
  WideEyes({
    required this.apiKey,
    required this.host,
    required this.showSimilar,
    required this.wearItWith,
  });

  final String? apiKey;
  final String? host;
  final CartCompositionExtraDetail? showSimilar;
  final WearItWith? wearItWith;

  factory WideEyes.fromJson(Map<String, dynamic> json){
    return WideEyes(
      apiKey: json["apiKey"],
      host: json["host"],
      showSimilar: json["showSimilar"] == null ? null : CartCompositionExtraDetail.fromJson(json["showSimilar"]),
      wearItWith: json["wearItWith"] == null ? null : WearItWith.fromJson(json["wearItWith"]),
    );
  }

}

class WearItWith {
  WearItWith({
    required this.enabledChannels,
    required this.enabledSections,
  });

  final List<String> enabledChannels;
  final List<int> enabledSections;

  factory WearItWith.fromJson(Map<String, dynamic> json){
    return WearItWith(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      enabledSections: json["enabledSections"] == null ? [] : List<int>.from(json["enabledSections"]!.map((x) => x)),
    );
  }

}

class SupportedLanguage {
  SupportedLanguage({
    required this.id,
    required this.code,
    required this.locale,
    required this.name,
    required this.countryName,
    required this.isSeoIrrelevant,
    required this.isSeoProductIrrelevant,
    required this.direction,
    required this.formats,
    required this.languageTag,
    required this.isRtl,
  });

  final int? id;
  final String? code;
  final String? locale;
  final String? name;
  final String? countryName;
  final bool? isSeoIrrelevant;
  final bool? isSeoProductIrrelevant;
  final String? direction;
  final Formats? formats;
  final String? languageTag;
  final bool? isRtl;

  factory SupportedLanguage.fromJson(Map<String, dynamic> json){
    return SupportedLanguage(
      id: json["id"],
      code: json["code"],
      locale: json["locale"],
      name: json["name"],
      countryName: json["countryName"],
      isSeoIrrelevant: json["isSeoIrrelevant"],
      isSeoProductIrrelevant: json["isSeoProductIrrelevant"],
      direction: json["direction"],
      formats: json["formats"] == null ? null : Formats.fromJson(json["formats"]),
      languageTag: json["languageTag"],
      isRtl: json["isRtl"],
    );
  }

}

class VirtualGiftCard {
  VirtualGiftCard({
    required this.share,
    required this.instantShipping,
  });

  final CartCompositionExtraDetail? share;
  final InstantShipping? instantShipping;

  factory VirtualGiftCard.fromJson(Map<String, dynamic> json){
    return VirtualGiftCard(
      share: json["share"] == null ? null : CartCompositionExtraDetail.fromJson(json["share"]),
      instantShipping: json["instantShipping"] == null ? null : InstantShipping.fromJson(json["instantShipping"]),
    );
  }

}

class InstantShipping {
  InstantShipping({
    required this.enabledChannels,
    required this.isEnabled,
  });

  final List<String> enabledChannels;
  final bool? isEnabled;

  factory InstantShipping.fromJson(Map<String, dynamic> json){
    return InstantShipping(
      enabledChannels: json["enabledChannels"] == null ? [] : List<String>.from(json["enabledChannels"]!.map((x) => x)),
      isEnabled: json["isEnabled"],
    );
  }

}

class ZaraIdQr {
  ZaraIdQr({
    required this.isEnabled,
    required this.colors,
  });

  final bool? isEnabled;
  final List<ZaraIdQrColor> colors;

  factory ZaraIdQr.fromJson(Map<String, dynamic> json){
    return ZaraIdQr(
      isEnabled: json["isEnabled"],
      colors: json["colors"] == null ? [] : List<ZaraIdQrColor>.from(json["colors"]!.map((x) => ZaraIdQrColor.fromJson(x))),
    );
  }

}

class ZaraIdQrColor {
  ZaraIdQrColor({
    required this.backgroundColor,
    required this.textColor,
  });

  final String? backgroundColor;
  final String? textColor;

  factory ZaraIdQrColor.fromJson(Map<String, dynamic> json){
    return ZaraIdQrColor(
      backgroundColor: json["backgroundColor"],
      textColor: json["textColor"],
    );
  }

}

class Trkpln {
  Trkpln({
    required this.clientId,
    required this.config,
  });

  final String? clientId;
  final Config? config;

  factory Trkpln.fromJson(Map<String, dynamic> json){
    return Trkpln(
      clientId: json["clientId"],
      config: json["config"] == null ? null : Config.fromJson(json["config"]),
    );
  }

}

class Config {
  Config({
    required this.env,
  });

  final String? env;

  factory Config.fromJson(Map<String, dynamic> json){
    return Config(
      env: json["env"],
    );
  }

}

class XmediaFormat {
  XmediaFormat({
    required this.datatype,
    required this.id,
    required this.xmediaFormatSet,
    required this.type,
    required this.name,
    required this.description,
    required this.codecs,
    required this.extension,
    required this.width,
    required this.isSeoRelevant,
  });

  final String? datatype;
  final int? id;
  final int? xmediaFormatSet;
  final String? type;
  final String? name;
  final String? description;
  final String? codecs;
  final String? extension;
  final int? width;
  final bool? isSeoRelevant;

  factory XmediaFormat.fromJson(Map<String, dynamic> json){
    return XmediaFormat(
      datatype: json["datatype"],
      id: json["id"],
      xmediaFormatSet: json["set"],
      type: json["type"],
      name: json["name"],
      description: json["description"],
      codecs: json["codecs"],
      extension: json["extension"],
      width: json["width"],
      isSeoRelevant: json["isSeoRelevant"],
    );
  }

}

class XmediaNetworkPerformance {
  XmediaNetworkPerformance({
    required this.dpr,
    required this.minQualityFactor,
    required this.interval,
    required this.enabled,
    required this.threshold,
  });

  final int? dpr;
  final int? minQualityFactor;
  final int? interval;
  final bool? enabled;
  final Threshold? threshold;

  factory XmediaNetworkPerformance.fromJson(Map<String, dynamic> json){
    return XmediaNetworkPerformance(
      dpr: json["dpr"],
      minQualityFactor: json["minQualityFactor"],
      interval: json["interval"],
      enabled: json["enabled"],
      threshold: json["threshold"] == null ? null : Threshold.fromJson(json["threshold"]),
    );
  }

}

class Threshold {
  Threshold({
    required this.min,
    required this.max,
  });

  final double? min;
  final int? max;

  factory Threshold.fromJson(Map<String, dynamic> json){
    return Threshold(
      min: json["min"],
      max: json["max"],
    );
  }

}

class XmediaTransformation {
  XmediaTransformation({
    required this.meta,
    required this.name,
    required this.type,
  });

  final Meta? meta;
  final String? name;
  final String? type;

  factory XmediaTransformation.fromJson(Map<String, dynamic> json){
    return XmediaTransformation(
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      name: json["name"],
      type: json["type"],
    );
  }

}

class Meta {
  Meta({
    required this.xmedia,
  });

  final List<Media> xmedia;

  factory Meta.fromJson(Map<String, dynamic> json){
    return Meta(
      xmedia: json["xmedia"] == null ? [] : List<Media>.from(json["xmedia"]!.map((x) => Media.fromJson(x))),
    );
  }

}

class Media {
  Media({
    required this.allowedScreens,
    required this.datatype,
    required this.height,
    required this.kind,
    required this.name,
    required this.path,
    required this.mediaSet,
    required this.timestamp,
    required this.type,
    required this.width,
    required this.gravity,
    required this.extraInfo,
    required this.url,
  });

  final List<String> allowedScreens;
  final String? datatype;
  final int? height;
  final String? kind;
  final String? name;
  final String? path;
  final int? mediaSet;
  final String? timestamp;
  final String? type;
  final int? width;
  final String? gravity;
  final XmediaExtraInfo? extraInfo;
  final String? url;

  factory Media.fromJson(Map<String, dynamic> json){
    return Media(
      allowedScreens: json["allowedScreens"] == null ? [] : List<String>.from(json["allowedScreens"]!.map((x) => x)),
      datatype: json["datatype"],
      height: json["height"],
      kind: json["kind"],
      name: json["name"],
      path: json["path"],
      mediaSet: json["set"],
      timestamp: json["timestamp"],
      type: json["type"],
      width: json["width"],
      gravity: json["gravity"],
      extraInfo: json["extraInfo"] == null ? null : XmediaExtraInfo.fromJson(json["extraInfo"]),
      url: json["url"],
    );
  }

}

class XmediaExtraInfo {
  XmediaExtraInfo({
    required this.originalName,
    required this.assetId,
    required this.deliveryUrl,
    required this.deliveryPath,
  });

  final String? originalName;
  final String? assetId;
  final String? deliveryUrl;
  final String? deliveryPath;

  factory XmediaExtraInfo.fromJson(Map<String, dynamic> json){
    return XmediaExtraInfo(
      originalName: json["originalName"],
      assetId: json["assetId"],
      deliveryUrl: json["deliveryUrl"],
      deliveryPath: json["deliveryPath"],
    );
  }

}

class ZenitEndpoints {
  ZenitEndpoints({
    required this.addToCart,
    required this.click,
    required this.hit,
    required this.impressions,
    required this.log,
    required this.purchaseConfirmed,
    required this.impressionsOld,
  });

  final String? addToCart;
  final String? click;
  final String? hit;
  final String? impressions;
  final String? log;
  final String? purchaseConfirmed;
  final String? impressionsOld;

  factory ZenitEndpoints.fromJson(Map<String, dynamic> json){
    return ZenitEndpoints(
      addToCart: json["addToCart"],
      click: json["click"],
      hit: json["hit"],
      impressions: json["impressions"],
      log: json["log"],
      purchaseConfirmed: json["purchaseConfirmed"],
      impressionsOld: json["impressionsOld"],
    );
  }

}

class DocInfo {
  DocInfo({
    required this.lastModified,
    required this.title,
    required this.description,
    required this.keywords,
    required this.pageId,
    required this.seoAttributes,
    required this.relData,
    required this.htmlAttributes,
  });

  final DateTime? lastModified;
  final String? title;
  final String? description;
  final String? keywords;
  final String? pageId;
  final String? seoAttributes;
  final RelData? relData;
  final Category? htmlAttributes;

  factory DocInfo.fromJson(Map<String, dynamic> json){
    return DocInfo(
      lastModified: DateTime.tryParse(json["lastModified"] ?? ""),
      title: json["title"],
      description: json["description"],
      keywords: json["keywords"],
      pageId: json["pageId"],
      seoAttributes: json["seoAttributes"],
      relData: json["relData"] == null ? null : RelData.fromJson(json["relData"]),
      htmlAttributes: json["htmlAttributes"] == null ? null : Category.fromJson(json["htmlAttributes"]),
    );
  }

}

class RelData {
  RelData({
    required this.canonicalUrl,
    required this.alternatesData,
  });

  final String? canonicalUrl;
  final List<AlternatesDatum> alternatesData;

  factory RelData.fromJson(Map<String, dynamic> json){
    return RelData(
      canonicalUrl: json["canonicalUrl"],
      alternatesData: json["alternatesData"] == null ? [] : List<AlternatesDatum>.from(json["alternatesData"]!.map((x) => AlternatesDatum.fromJson(x))),
    );
  }

}

class AlternatesDatum {
  AlternatesDatum({
    required this.lang,
    required this.href,
  });

  final String? lang;
  final String? href;

  factory AlternatesDatum.fromJson(Map<String, dynamic> json){
    return AlternatesDatum(
      lang: json["lang"],
      href: json["href"],
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

class MkSpots {
  MkSpots({
    required this.eSpotCopyright,
    required this.eSpotWebCommonScripts,
    required this.eSpotFooterLinks,
    required this.eSpotLiveStyleSheet,
    required this.eSpotVirtualGiftCardPreview,
    required this.eSpotProductPageSpecialReturnConditions,
    required this.eSpotSocialNetworkFooter,
  });

  final ESpotCopyright? eSpotCopyright;
  final ESpot? eSpotWebCommonScripts;
  final ESpot? eSpotFooterLinks;
  final ESpot? eSpotLiveStyleSheet;
  final dynamic eSpotVirtualGiftCardPreview;
  final ESpot? eSpotProductPageSpecialReturnConditions;
  final ESpot? eSpotSocialNetworkFooter;

  factory MkSpots.fromJson(Map<String, dynamic> json){
    return MkSpots(
      eSpotCopyright: json["ESpot_Copyright"] == null ? null : ESpotCopyright.fromJson(json["ESpot_Copyright"]),
      eSpotWebCommonScripts: json["ESpot_WebCommonScripts"] == null ? null : ESpot.fromJson(json["ESpot_WebCommonScripts"]),
      eSpotFooterLinks: json["ESpot_Footer_Links"] == null ? null : ESpot.fromJson(json["ESpot_Footer_Links"]),
      eSpotLiveStyleSheet: json["ESpot_LiveStyleSheet"] == null ? null : ESpot.fromJson(json["ESpot_LiveStyleSheet"]),
      eSpotVirtualGiftCardPreview: json["ESpot_VirtualGiftCard_Preview"],
      eSpotProductPageSpecialReturnConditions: json["ESpot_ProductPage_SpecialReturnConditions"] == null ? null : ESpot.fromJson(json["ESpot_ProductPage_SpecialReturnConditions"]),
      eSpotSocialNetworkFooter: json["ESpot_SocialNetwork_Footer"] == null ? null : ESpot.fromJson(json["ESpot_SocialNetwork_Footer"]),
    );
  }

}

class ESpotCopyright {
  ESpotCopyright({
    required this.key,
    required this.content,
  });

  final String? key;
  final Content? content;

  factory ESpotCopyright.fromJson(Map<String, dynamic> json){
    return ESpotCopyright(
      key: json["key"],
      content: json["content"] == null ? null : Content.fromJson(json["content"]),
    );
  }

}

class Content {
  Content({
    required this.content,
  });

  final String? content;

  factory Content.fromJson(Map<String, dynamic> json){
    return Content(
      content: json["content"],
    );
  }

}

class ESpot {
  ESpot({
    required this.type,
    required this.content,
    required this.key,
  });

  final String? type;
  final Content? content;
  final String? key;

  factory ESpot.fromJson(Map<String, dynamic> json){
    return ESpot(
      type: json["type"],
      content: json["content"] == null ? null : Content.fromJson(json["content"]),
      key: json["key"],
    );
  }

}

class MobileApp {
  MobileApp({
    required this.msg,
    required this.iOsUri,
    required this.androidUri,
  });

  final String? msg;
  final String? iOsUri;
  final String? androidUri;

  factory MobileApp.fromJson(Map<String, dynamic> json){
    return MobileApp(
      msg: json["msg"],
      iOsUri: json["iOSUri"],
      androidUri: json["androidUri"],
    );
  }

}

class Product {
  Product({
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
  final ProductExtraInfo? extraInfo;
  final Seo? seo;
  final DateTime? firstVisibleDate;
  final List<dynamic> attributes;
  final SizeGuide? sizeGuide;
  final List<dynamic> xmedia;
  final List<dynamic> productTag;

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
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
      extraInfo: json["extraInfo"] == null ? null : ProductExtraInfo.fromJson(json["extraInfo"]),
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
  final List<DetailColor> colors;
  final String? colorSelectorLabel;
  final String? multipleColorLabel;
  final DetailedComposition? detailedComposition;
  final List<dynamic> relatedProducts;

  factory Detail.fromJson(Map<String, dynamic> json){
    return Detail(
      reference: json["reference"],
      displayReference: json["displayReference"],
      colors: json["colors"] == null ? [] : List<DetailColor>.from(json["colors"]!.map((x) => DetailColor.fromJson(x))),
      colorSelectorLabel: json["colorSelectorLabel"],
      multipleColorLabel: json["multipleColorLabel"],
      detailedComposition: json["detailedComposition"] == null ? null : DetailedComposition.fromJson(json["detailedComposition"]),
      relatedProducts: json["relatedProducts"] == null ? [] : List<dynamic>.from(json["relatedProducts"]!.map((x) => x)),
    );
  }

}

class DetailColor {
  DetailColor({
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
  final List<Image> xmedia;
  final List<Media> shopcartMedia;
  final int? price;
  final List<Size> sizes;
  final String? description;
  final String? rawDescription;
  final ColorExtraInfo? extraInfo;
  final List<TagType> tagTypes;
  final List<dynamic> attributes;
  final List<Relation> relations;
  final List<Image> mainImgs;
  final bool? priceUnavailable;

  factory DetailColor.fromJson(Map<String, dynamic> json){
    return DetailColor(
      id: json["id"],
      hexCode: json["hexCode"],
      productId: json["productId"],
      name: json["name"],
      reference: json["reference"],
      stylingId: json["stylingId"],
      xmedia: json["xmedia"] == null ? [] : List<Image>.from(json["xmedia"]!.map((x) => Image.fromJson(x))),
      shopcartMedia: json["shopcartMedia"] == null ? [] : List<Media>.from(json["shopcartMedia"]!.map((x) => Media.fromJson(x))),
      price: json["price"],
      sizes: json["sizes"] == null ? [] : List<Size>.from(json["sizes"]!.map((x) => Size.fromJson(x))),
      description: json["description"],
      rawDescription: json["rawDescription"],
      extraInfo: json["extraInfo"] == null ? null : ColorExtraInfo.fromJson(json["extraInfo"]),
      tagTypes: json["tagTypes"] == null ? [] : List<TagType>.from(json["tagTypes"]!.map((x) => TagType.fromJson(x))),
      attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
      relations: json["relations"] == null ? [] : List<Relation>.from(json["relations"]!.map((x) => Relation.fromJson(x))),
      mainImgs: json["mainImgs"] == null ? [] : List<Image>.from(json["mainImgs"]!.map((x) => Image.fromJson(x))),
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

class Image {
  Image({
    required this.datatype,
    required this.imageSet,
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
  final int? imageSet;
  final String? type;
  final String? kind;
  final String? path;
  final String? name;
  final int? width;
  final int? height;
  final String? timestamp;
  final List<String> allowedScreens;
  final String? gravity;
  final XmediaExtraInfo? extraInfo;
  final String? url;
  final int? order;

  factory Image.fromJson(Map<String, dynamic> json){
    return Image(
      datatype: json["datatype"],
      imageSet: json["set"],
      type: json["type"],
      kind: json["kind"],
      path: json["path"],
      name: json["name"],
      width: json["width"],
      height: json["height"],
      timestamp: json["timestamp"],
      allowedScreens: json["allowedScreens"] == null ? [] : List<String>.from(json["allowedScreens"]!.map((x) => x)),
      gravity: json["gravity"],
      extraInfo: json["extraInfo"] == null ? null : XmediaExtraInfo.fromJson(json["extraInfo"]),
      url: json["url"],
      order: json["order"],
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
  final Category? properties;

  factory Attribute.fromJson(Map<String, dynamic> json){
    return Attribute(
      type: json["type"],
      identifier: json["identifier"],
      name: json["name"],
      values: json["values"] == null ? [] : List<String>.from(json["values"]!.map((x) => x)),
      properties: json["properties"] == null ? null : Category.fromJson(json["properties"]),
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

class ProductExtraInfo {
  ProductExtraInfo({
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

  factory ProductExtraInfo.fromJson(Map<String, dynamic> json){
    return ProductExtraInfo(
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

class ProductMetaDatum {
  ProductMetaDatum({
    required this.sku,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    required this.availability,
    required this.images,
    required this.url,
  });

  final String? sku;
  final String? name;
  final String? brand;
  final String? description;
  final double? price;
  final String? availability;
  final List<Image> images;
  final String? url;

  factory ProductMetaDatum.fromJson(Map<String, dynamic> json){
    return ProductMetaDatum(
      sku: json["sku"],
      name: json["name"],
      brand: json["brand"],
      description: json["description"],
      price: json["price"],
      availability: json["availability"],
      images: json["images"] == null ? [] : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
      url: json["url"],
    );
  }

}
