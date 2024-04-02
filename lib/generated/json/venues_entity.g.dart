import 'package:cleancodeprovider/generated/json/base/json_convert_content.dart';
import 'package:cleancodeprovider/features/auth/domain/models/venues_entity.dart';

VenuesEntity $VenuesEntityFromJson(Map<String, dynamic> json) {
  final VenuesEntity venuesEntity = VenuesEntity();
  final VenuesEmbedded? embedded = jsonConvert.convert<VenuesEmbedded>(
      json['_embedded']);
  if (embedded != null) {
    venuesEntity.embedded = embedded;
  }
  final VenuesLinks? links = jsonConvert.convert<VenuesLinks>(json['_links']);
  if (links != null) {
    venuesEntity.links = links;
  }
  final VenuesPage? page = jsonConvert.convert<VenuesPage>(json['page']);
  if (page != null) {
    venuesEntity.page = page;
  }
  return venuesEntity;
}

Map<String, dynamic> $VenuesEntityToJson(VenuesEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['_embedded'] = entity.embedded.toJson();
  data['_links'] = entity.links.toJson();
  data['page'] = entity.page.toJson();
  return data;
}

extension VenuesEntityExtension on VenuesEntity {
  VenuesEntity copyWith({
    VenuesEmbedded? embedded,
    VenuesLinks? links,
    VenuesPage? page,
  }) {
    return VenuesEntity()
      ..embedded = embedded ?? this.embedded
      ..links = links ?? this.links
      ..page = page ?? this.page;
  }
}

VenuesEmbedded $VenuesEmbeddedFromJson(Map<String, dynamic> json) {
  final VenuesEmbedded venuesEmbedded = VenuesEmbedded();
  final List<VenuesEmbeddedVenues>? venues = (json['venues'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VenuesEmbeddedVenues>(e) as VenuesEmbeddedVenues)
      .toList();
  if (venues != null) {
    venuesEmbedded.venues = venues;
  }
  return venuesEmbedded;
}

Map<String, dynamic> $VenuesEmbeddedToJson(VenuesEmbedded entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['venues'] = entity.venues.map((v) => v.toJson()).toList();
  return data;
}

extension VenuesEmbeddedExtension on VenuesEmbedded {
  VenuesEmbedded copyWith({
    List<VenuesEmbeddedVenues>? venues,
  }) {
    return VenuesEmbedded()
      ..venues = venues ?? this.venues;
  }
}

VenuesEmbeddedVenues $VenuesEmbeddedVenuesFromJson(Map<String, dynamic> json) {
  final VenuesEmbeddedVenues venuesEmbeddedVenues = VenuesEmbeddedVenues();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    venuesEmbeddedVenues.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    venuesEmbeddedVenues.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    venuesEmbeddedVenues.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    venuesEmbeddedVenues.test = test;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    venuesEmbeddedVenues.url = url;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    venuesEmbeddedVenues.locale = locale;
  }
  final List<String>? aliases = (json['aliases'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (aliases != null) {
    venuesEmbeddedVenues.aliases = aliases;
  }
  final List<VenuesEmbeddedVenuesImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VenuesEmbeddedVenuesImages>(
          e) as VenuesEmbeddedVenuesImages).toList();
  if (images != null) {
    venuesEmbeddedVenues.images = images;
  }
  final String? postalCode = jsonConvert.convert<String>(json['postalCode']);
  if (postalCode != null) {
    venuesEmbeddedVenues.postalCode = postalCode;
  }
  final String? timezone = jsonConvert.convert<String>(json['timezone']);
  if (timezone != null) {
    venuesEmbeddedVenues.timezone = timezone;
  }
  final VenuesEmbeddedVenuesCity? city = jsonConvert.convert<
      VenuesEmbeddedVenuesCity>(json['city']);
  if (city != null) {
    venuesEmbeddedVenues.city = city;
  }
  final VenuesEmbeddedVenuesState? state = jsonConvert.convert<
      VenuesEmbeddedVenuesState>(json['state']);
  if (state != null) {
    venuesEmbeddedVenues.state = state;
  }
  final VenuesEmbeddedVenuesCountry? country = jsonConvert.convert<
      VenuesEmbeddedVenuesCountry>(json['country']);
  if (country != null) {
    venuesEmbeddedVenues.country = country;
  }
  final VenuesEmbeddedVenuesAddress? address = jsonConvert.convert<
      VenuesEmbeddedVenuesAddress>(json['address']);
  if (address != null) {
    venuesEmbeddedVenues.address = address;
  }
  final VenuesEmbeddedVenuesLocation? location = jsonConvert.convert<
      VenuesEmbeddedVenuesLocation>(json['location']);
  if (location != null) {
    venuesEmbeddedVenues.location = location;
  }
  final List<VenuesEmbeddedVenuesMarkets>? markets = (json['markets'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VenuesEmbeddedVenuesMarkets>(
          e) as VenuesEmbeddedVenuesMarkets).toList();
  if (markets != null) {
    venuesEmbeddedVenues.markets = markets;
  }
  final List<VenuesEmbeddedVenuesDmas>? dmas = (json['dmas'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VenuesEmbeddedVenuesDmas>(
          e) as VenuesEmbeddedVenuesDmas)
      .toList();
  if (dmas != null) {
    venuesEmbeddedVenues.dmas = dmas;
  }
  final VenuesEmbeddedVenuesSocial? social = jsonConvert.convert<
      VenuesEmbeddedVenuesSocial>(json['social']);
  if (social != null) {
    venuesEmbeddedVenues.social = social;
  }
  final VenuesEmbeddedVenuesBoxOfficeInfo? boxOfficeInfo = jsonConvert.convert<
      VenuesEmbeddedVenuesBoxOfficeInfo>(json['boxOfficeInfo']);
  if (boxOfficeInfo != null) {
    venuesEmbeddedVenues.boxOfficeInfo = boxOfficeInfo;
  }
  final String? parkingDetail = jsonConvert.convert<String>(
      json['parkingDetail']);
  if (parkingDetail != null) {
    venuesEmbeddedVenues.parkingDetail = parkingDetail;
  }
  final String? accessibleSeatingDetail = jsonConvert.convert<String>(
      json['accessibleSeatingDetail']);
  if (accessibleSeatingDetail != null) {
    venuesEmbeddedVenues.accessibleSeatingDetail = accessibleSeatingDetail;
  }
  final VenuesEmbeddedVenuesGeneralInfo? generalInfo = jsonConvert.convert<
      VenuesEmbeddedVenuesGeneralInfo>(json['generalInfo']);
  if (generalInfo != null) {
    venuesEmbeddedVenues.generalInfo = generalInfo;
  }
  final VenuesEmbeddedVenuesUpcomingEvents? upcomingEvents = jsonConvert
      .convert<VenuesEmbeddedVenuesUpcomingEvents>(json['upcomingEvents']);
  if (upcomingEvents != null) {
    venuesEmbeddedVenues.upcomingEvents = upcomingEvents;
  }
  final VenuesEmbeddedVenuesAda? ada = jsonConvert.convert<
      VenuesEmbeddedVenuesAda>(json['ada']);
  if (ada != null) {
    venuesEmbeddedVenues.ada = ada;
  }
  final VenuesEmbeddedVenuesLinks? links = jsonConvert.convert<
      VenuesEmbeddedVenuesLinks>(json['_links']);
  if (links != null) {
    venuesEmbeddedVenues.links = links;
  }
  return venuesEmbeddedVenues;
}

Map<String, dynamic> $VenuesEmbeddedVenuesToJson(VenuesEmbeddedVenues entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['test'] = entity.test;
  data['url'] = entity.url;
  data['locale'] = entity.locale;
  data['aliases'] = entity.aliases;
  data['images'] = entity.images.map((v) => v.toJson()).toList();
  data['postalCode'] = entity.postalCode;
  data['timezone'] = entity.timezone;
  data['city'] = entity.city.toJson();
  data['state'] = entity.state.toJson();
  data['country'] = entity.country.toJson();
  data['address'] = entity.address.toJson();
  data['location'] = entity.location.toJson();
  data['markets'] = entity.markets.map((v) => v.toJson()).toList();
  data['dmas'] = entity.dmas.map((v) => v.toJson()).toList();
  data['social'] = entity.social.toJson();
  data['boxOfficeInfo'] = entity.boxOfficeInfo.toJson();
  data['parkingDetail'] = entity.parkingDetail;
  data['accessibleSeatingDetail'] = entity.accessibleSeatingDetail;
  data['generalInfo'] = entity.generalInfo.toJson();
  data['upcomingEvents'] = entity.upcomingEvents.toJson();
  data['ada'] = entity.ada.toJson();
  data['_links'] = entity.links.toJson();
  return data;
}

extension VenuesEmbeddedVenuesExtension on VenuesEmbeddedVenues {
  VenuesEmbeddedVenues copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? url,
    String? locale,
    List<String>? aliases,
    List<VenuesEmbeddedVenuesImages>? images,
    String? postalCode,
    String? timezone,
    VenuesEmbeddedVenuesCity? city,
    VenuesEmbeddedVenuesState? state,
    VenuesEmbeddedVenuesCountry? country,
    VenuesEmbeddedVenuesAddress? address,
    VenuesEmbeddedVenuesLocation? location,
    List<VenuesEmbeddedVenuesMarkets>? markets,
    List<VenuesEmbeddedVenuesDmas>? dmas,
    VenuesEmbeddedVenuesSocial? social,
    VenuesEmbeddedVenuesBoxOfficeInfo? boxOfficeInfo,
    String? parkingDetail,
    String? accessibleSeatingDetail,
    VenuesEmbeddedVenuesGeneralInfo? generalInfo,
    VenuesEmbeddedVenuesUpcomingEvents? upcomingEvents,
    VenuesEmbeddedVenuesAda? ada,
    VenuesEmbeddedVenuesLinks? links,
  }) {
    return VenuesEmbeddedVenues()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..id = id ?? this.id
      ..test = test ?? this.test
      ..url = url ?? this.url
      ..locale = locale ?? this.locale
      ..aliases = aliases ?? this.aliases
      ..images = images ?? this.images
      ..postalCode = postalCode ?? this.postalCode
      ..timezone = timezone ?? this.timezone
      ..city = city ?? this.city
      ..state = state ?? this.state
      ..country = country ?? this.country
      ..address = address ?? this.address
      ..location = location ?? this.location
      ..markets = markets ?? this.markets
      ..dmas = dmas ?? this.dmas
      ..social = social ?? this.social
      ..boxOfficeInfo = boxOfficeInfo ?? this.boxOfficeInfo
      ..parkingDetail = parkingDetail ?? this.parkingDetail
      ..accessibleSeatingDetail = accessibleSeatingDetail ??
          this.accessibleSeatingDetail
      ..generalInfo = generalInfo ?? this.generalInfo
      ..upcomingEvents = upcomingEvents ?? this.upcomingEvents
      ..ada = ada ?? this.ada
      ..links = links ?? this.links;
  }
}

VenuesEmbeddedVenuesImages $VenuesEmbeddedVenuesImagesFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesImages venuesEmbeddedVenuesImages = VenuesEmbeddedVenuesImages();
  final String? ratio = jsonConvert.convert<String>(json['ratio']);
  if (ratio != null) {
    venuesEmbeddedVenuesImages.ratio = ratio;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    venuesEmbeddedVenuesImages.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    venuesEmbeddedVenuesImages.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    venuesEmbeddedVenuesImages.height = height;
  }
  final bool? fallback = jsonConvert.convert<bool>(json['fallback']);
  if (fallback != null) {
    venuesEmbeddedVenuesImages.fallback = fallback;
  }
  return venuesEmbeddedVenuesImages;
}

Map<String, dynamic> $VenuesEmbeddedVenuesImagesToJson(
    VenuesEmbeddedVenuesImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ratio'] = entity.ratio;
  data['url'] = entity.url;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['fallback'] = entity.fallback;
  return data;
}

extension VenuesEmbeddedVenuesImagesExtension on VenuesEmbeddedVenuesImages {
  VenuesEmbeddedVenuesImages copyWith({
    String? ratio,
    String? url,
    int? width,
    int? height,
    bool? fallback,
  }) {
    return VenuesEmbeddedVenuesImages()
      ..ratio = ratio ?? this.ratio
      ..url = url ?? this.url
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..fallback = fallback ?? this.fallback;
  }
}

VenuesEmbeddedVenuesCity $VenuesEmbeddedVenuesCityFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesCity venuesEmbeddedVenuesCity = VenuesEmbeddedVenuesCity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    venuesEmbeddedVenuesCity.name = name;
  }
  return venuesEmbeddedVenuesCity;
}

Map<String, dynamic> $VenuesEmbeddedVenuesCityToJson(
    VenuesEmbeddedVenuesCity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  return data;
}

extension VenuesEmbeddedVenuesCityExtension on VenuesEmbeddedVenuesCity {
  VenuesEmbeddedVenuesCity copyWith({
    String? name,
  }) {
    return VenuesEmbeddedVenuesCity()
      ..name = name ?? this.name;
  }
}

VenuesEmbeddedVenuesState $VenuesEmbeddedVenuesStateFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesState venuesEmbeddedVenuesState = VenuesEmbeddedVenuesState();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    venuesEmbeddedVenuesState.name = name;
  }
  final String? stateCode = jsonConvert.convert<String>(json['stateCode']);
  if (stateCode != null) {
    venuesEmbeddedVenuesState.stateCode = stateCode;
  }
  return venuesEmbeddedVenuesState;
}

Map<String, dynamic> $VenuesEmbeddedVenuesStateToJson(
    VenuesEmbeddedVenuesState entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['stateCode'] = entity.stateCode;
  return data;
}

extension VenuesEmbeddedVenuesStateExtension on VenuesEmbeddedVenuesState {
  VenuesEmbeddedVenuesState copyWith({
    String? name,
    String? stateCode,
  }) {
    return VenuesEmbeddedVenuesState()
      ..name = name ?? this.name
      ..stateCode = stateCode ?? this.stateCode;
  }
}

VenuesEmbeddedVenuesCountry $VenuesEmbeddedVenuesCountryFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesCountry venuesEmbeddedVenuesCountry = VenuesEmbeddedVenuesCountry();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    venuesEmbeddedVenuesCountry.name = name;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    venuesEmbeddedVenuesCountry.countryCode = countryCode;
  }
  return venuesEmbeddedVenuesCountry;
}

Map<String, dynamic> $VenuesEmbeddedVenuesCountryToJson(
    VenuesEmbeddedVenuesCountry entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['countryCode'] = entity.countryCode;
  return data;
}

extension VenuesEmbeddedVenuesCountryExtension on VenuesEmbeddedVenuesCountry {
  VenuesEmbeddedVenuesCountry copyWith({
    String? name,
    String? countryCode,
  }) {
    return VenuesEmbeddedVenuesCountry()
      ..name = name ?? this.name
      ..countryCode = countryCode ?? this.countryCode;
  }
}

VenuesEmbeddedVenuesAddress $VenuesEmbeddedVenuesAddressFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesAddress venuesEmbeddedVenuesAddress = VenuesEmbeddedVenuesAddress();
  final String? line1 = jsonConvert.convert<String>(json['line1']);
  if (line1 != null) {
    venuesEmbeddedVenuesAddress.line1 = line1;
  }
  return venuesEmbeddedVenuesAddress;
}

Map<String, dynamic> $VenuesEmbeddedVenuesAddressToJson(
    VenuesEmbeddedVenuesAddress entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['line1'] = entity.line1;
  return data;
}

extension VenuesEmbeddedVenuesAddressExtension on VenuesEmbeddedVenuesAddress {
  VenuesEmbeddedVenuesAddress copyWith({
    String? line1,
  }) {
    return VenuesEmbeddedVenuesAddress()
      ..line1 = line1 ?? this.line1;
  }
}

VenuesEmbeddedVenuesLocation $VenuesEmbeddedVenuesLocationFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesLocation venuesEmbeddedVenuesLocation = VenuesEmbeddedVenuesLocation();
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    venuesEmbeddedVenuesLocation.longitude = longitude;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    venuesEmbeddedVenuesLocation.latitude = latitude;
  }
  return venuesEmbeddedVenuesLocation;
}

Map<String, dynamic> $VenuesEmbeddedVenuesLocationToJson(
    VenuesEmbeddedVenuesLocation entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['longitude'] = entity.longitude;
  data['latitude'] = entity.latitude;
  return data;
}

extension VenuesEmbeddedVenuesLocationExtension on VenuesEmbeddedVenuesLocation {
  VenuesEmbeddedVenuesLocation copyWith({
    String? longitude,
    String? latitude,
  }) {
    return VenuesEmbeddedVenuesLocation()
      ..longitude = longitude ?? this.longitude
      ..latitude = latitude ?? this.latitude;
  }
}

VenuesEmbeddedVenuesMarkets $VenuesEmbeddedVenuesMarketsFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesMarkets venuesEmbeddedVenuesMarkets = VenuesEmbeddedVenuesMarkets();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    venuesEmbeddedVenuesMarkets.name = name;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    venuesEmbeddedVenuesMarkets.id = id;
  }
  return venuesEmbeddedVenuesMarkets;
}

Map<String, dynamic> $VenuesEmbeddedVenuesMarketsToJson(
    VenuesEmbeddedVenuesMarkets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  return data;
}

extension VenuesEmbeddedVenuesMarketsExtension on VenuesEmbeddedVenuesMarkets {
  VenuesEmbeddedVenuesMarkets copyWith({
    String? name,
    String? id,
  }) {
    return VenuesEmbeddedVenuesMarkets()
      ..name = name ?? this.name
      ..id = id ?? this.id;
  }
}

VenuesEmbeddedVenuesDmas $VenuesEmbeddedVenuesDmasFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesDmas venuesEmbeddedVenuesDmas = VenuesEmbeddedVenuesDmas();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    venuesEmbeddedVenuesDmas.id = id;
  }
  return venuesEmbeddedVenuesDmas;
}

Map<String, dynamic> $VenuesEmbeddedVenuesDmasToJson(
    VenuesEmbeddedVenuesDmas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

extension VenuesEmbeddedVenuesDmasExtension on VenuesEmbeddedVenuesDmas {
  VenuesEmbeddedVenuesDmas copyWith({
    int? id,
  }) {
    return VenuesEmbeddedVenuesDmas()
      ..id = id ?? this.id;
  }
}

VenuesEmbeddedVenuesSocial $VenuesEmbeddedVenuesSocialFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesSocial venuesEmbeddedVenuesSocial = VenuesEmbeddedVenuesSocial();
  final VenuesEmbeddedVenuesSocialTwitter? twitter = jsonConvert.convert<
      VenuesEmbeddedVenuesSocialTwitter>(json['twitter']);
  if (twitter != null) {
    venuesEmbeddedVenuesSocial.twitter = twitter;
  }
  return venuesEmbeddedVenuesSocial;
}

Map<String, dynamic> $VenuesEmbeddedVenuesSocialToJson(
    VenuesEmbeddedVenuesSocial entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['twitter'] = entity.twitter.toJson();
  return data;
}

extension VenuesEmbeddedVenuesSocialExtension on VenuesEmbeddedVenuesSocial {
  VenuesEmbeddedVenuesSocial copyWith({
    VenuesEmbeddedVenuesSocialTwitter? twitter,
  }) {
    return VenuesEmbeddedVenuesSocial()
      ..twitter = twitter ?? this.twitter;
  }
}

VenuesEmbeddedVenuesSocialTwitter $VenuesEmbeddedVenuesSocialTwitterFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesSocialTwitter venuesEmbeddedVenuesSocialTwitter = VenuesEmbeddedVenuesSocialTwitter();
  final String? handle = jsonConvert.convert<String>(json['handle']);
  if (handle != null) {
    venuesEmbeddedVenuesSocialTwitter.handle = handle;
  }
  return venuesEmbeddedVenuesSocialTwitter;
}

Map<String, dynamic> $VenuesEmbeddedVenuesSocialTwitterToJson(
    VenuesEmbeddedVenuesSocialTwitter entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['handle'] = entity.handle;
  return data;
}

extension VenuesEmbeddedVenuesSocialTwitterExtension on VenuesEmbeddedVenuesSocialTwitter {
  VenuesEmbeddedVenuesSocialTwitter copyWith({
    String? handle,
  }) {
    return VenuesEmbeddedVenuesSocialTwitter()
      ..handle = handle ?? this.handle;
  }
}

VenuesEmbeddedVenuesBoxOfficeInfo $VenuesEmbeddedVenuesBoxOfficeInfoFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesBoxOfficeInfo venuesEmbeddedVenuesBoxOfficeInfo = VenuesEmbeddedVenuesBoxOfficeInfo();
  final String? phoneNumberDetail = jsonConvert.convert<String>(
      json['phoneNumberDetail']);
  if (phoneNumberDetail != null) {
    venuesEmbeddedVenuesBoxOfficeInfo.phoneNumberDetail = phoneNumberDetail;
  }
  final String? openHoursDetail = jsonConvert.convert<String>(
      json['openHoursDetail']);
  if (openHoursDetail != null) {
    venuesEmbeddedVenuesBoxOfficeInfo.openHoursDetail = openHoursDetail;
  }
  final String? acceptedPaymentDetail = jsonConvert.convert<String>(
      json['acceptedPaymentDetail']);
  if (acceptedPaymentDetail != null) {
    venuesEmbeddedVenuesBoxOfficeInfo.acceptedPaymentDetail =
        acceptedPaymentDetail;
  }
  final String? willCallDetail = jsonConvert.convert<String>(
      json['willCallDetail']);
  if (willCallDetail != null) {
    venuesEmbeddedVenuesBoxOfficeInfo.willCallDetail = willCallDetail;
  }
  return venuesEmbeddedVenuesBoxOfficeInfo;
}

Map<String, dynamic> $VenuesEmbeddedVenuesBoxOfficeInfoToJson(
    VenuesEmbeddedVenuesBoxOfficeInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['phoneNumberDetail'] = entity.phoneNumberDetail;
  data['openHoursDetail'] = entity.openHoursDetail;
  data['acceptedPaymentDetail'] = entity.acceptedPaymentDetail;
  data['willCallDetail'] = entity.willCallDetail;
  return data;
}

extension VenuesEmbeddedVenuesBoxOfficeInfoExtension on VenuesEmbeddedVenuesBoxOfficeInfo {
  VenuesEmbeddedVenuesBoxOfficeInfo copyWith({
    String? phoneNumberDetail,
    String? openHoursDetail,
    String? acceptedPaymentDetail,
    String? willCallDetail,
  }) {
    return VenuesEmbeddedVenuesBoxOfficeInfo()
      ..phoneNumberDetail = phoneNumberDetail ?? this.phoneNumberDetail
      ..openHoursDetail = openHoursDetail ?? this.openHoursDetail
      ..acceptedPaymentDetail = acceptedPaymentDetail ??
          this.acceptedPaymentDetail
      ..willCallDetail = willCallDetail ?? this.willCallDetail;
  }
}

VenuesEmbeddedVenuesGeneralInfo $VenuesEmbeddedVenuesGeneralInfoFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesGeneralInfo venuesEmbeddedVenuesGeneralInfo = VenuesEmbeddedVenuesGeneralInfo();
  final String? generalRule = jsonConvert.convert<String>(json['generalRule']);
  if (generalRule != null) {
    venuesEmbeddedVenuesGeneralInfo.generalRule = generalRule;
  }
  final String? childRule = jsonConvert.convert<String>(json['childRule']);
  if (childRule != null) {
    venuesEmbeddedVenuesGeneralInfo.childRule = childRule;
  }
  return venuesEmbeddedVenuesGeneralInfo;
}

Map<String, dynamic> $VenuesEmbeddedVenuesGeneralInfoToJson(
    VenuesEmbeddedVenuesGeneralInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['generalRule'] = entity.generalRule;
  data['childRule'] = entity.childRule;
  return data;
}

extension VenuesEmbeddedVenuesGeneralInfoExtension on VenuesEmbeddedVenuesGeneralInfo {
  VenuesEmbeddedVenuesGeneralInfo copyWith({
    String? generalRule,
    String? childRule,
  }) {
    return VenuesEmbeddedVenuesGeneralInfo()
      ..generalRule = generalRule ?? this.generalRule
      ..childRule = childRule ?? this.childRule;
  }
}

VenuesEmbeddedVenuesUpcomingEvents $VenuesEmbeddedVenuesUpcomingEventsFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesUpcomingEvents venuesEmbeddedVenuesUpcomingEvents = VenuesEmbeddedVenuesUpcomingEvents();
  final int? ticketmaster = jsonConvert.convert<int>(json['ticketmaster']);
  if (ticketmaster != null) {
    venuesEmbeddedVenuesUpcomingEvents.ticketmaster = ticketmaster;
  }
  final int? total = jsonConvert.convert<int>(json['_total']);
  if (total != null) {
    venuesEmbeddedVenuesUpcomingEvents.total = total;
  }
  final int? filtered = jsonConvert.convert<int>(json['_filtered']);
  if (filtered != null) {
    venuesEmbeddedVenuesUpcomingEvents.filtered = filtered;
  }
  return venuesEmbeddedVenuesUpcomingEvents;
}

Map<String, dynamic> $VenuesEmbeddedVenuesUpcomingEventsToJson(
    VenuesEmbeddedVenuesUpcomingEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ticketmaster'] = entity.ticketmaster;
  data['_total'] = entity.total;
  data['_filtered'] = entity.filtered;
  return data;
}

extension VenuesEmbeddedVenuesUpcomingEventsExtension on VenuesEmbeddedVenuesUpcomingEvents {
  VenuesEmbeddedVenuesUpcomingEvents copyWith({
    int? ticketmaster,
    int? total,
    int? filtered,
  }) {
    return VenuesEmbeddedVenuesUpcomingEvents()
      ..ticketmaster = ticketmaster ?? this.ticketmaster
      ..total = total ?? this.total
      ..filtered = filtered ?? this.filtered;
  }
}

VenuesEmbeddedVenuesAda $VenuesEmbeddedVenuesAdaFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesAda venuesEmbeddedVenuesAda = VenuesEmbeddedVenuesAda();
  final String? adaPhones = jsonConvert.convert<String>(json['adaPhones']);
  if (adaPhones != null) {
    venuesEmbeddedVenuesAda.adaPhones = adaPhones;
  }
  final String? adaCustomCopy = jsonConvert.convert<String>(
      json['adaCustomCopy']);
  if (adaCustomCopy != null) {
    venuesEmbeddedVenuesAda.adaCustomCopy = adaCustomCopy;
  }
  final String? adaHours = jsonConvert.convert<String>(json['adaHours']);
  if (adaHours != null) {
    venuesEmbeddedVenuesAda.adaHours = adaHours;
  }
  return venuesEmbeddedVenuesAda;
}

Map<String, dynamic> $VenuesEmbeddedVenuesAdaToJson(
    VenuesEmbeddedVenuesAda entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adaPhones'] = entity.adaPhones;
  data['adaCustomCopy'] = entity.adaCustomCopy;
  data['adaHours'] = entity.adaHours;
  return data;
}

extension VenuesEmbeddedVenuesAdaExtension on VenuesEmbeddedVenuesAda {
  VenuesEmbeddedVenuesAda copyWith({
    String? adaPhones,
    String? adaCustomCopy,
    String? adaHours,
  }) {
    return VenuesEmbeddedVenuesAda()
      ..adaPhones = adaPhones ?? this.adaPhones
      ..adaCustomCopy = adaCustomCopy ?? this.adaCustomCopy
      ..adaHours = adaHours ?? this.adaHours;
  }
}

VenuesEmbeddedVenuesLinks $VenuesEmbeddedVenuesLinksFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesLinks venuesEmbeddedVenuesLinks = VenuesEmbeddedVenuesLinks();
  final VenuesEmbeddedVenuesLinksSelf? self = jsonConvert.convert<
      VenuesEmbeddedVenuesLinksSelf>(json['self']);
  if (self != null) {
    venuesEmbeddedVenuesLinks.self = self;
  }
  return venuesEmbeddedVenuesLinks;
}

Map<String, dynamic> $VenuesEmbeddedVenuesLinksToJson(
    VenuesEmbeddedVenuesLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  return data;
}

extension VenuesEmbeddedVenuesLinksExtension on VenuesEmbeddedVenuesLinks {
  VenuesEmbeddedVenuesLinks copyWith({
    VenuesEmbeddedVenuesLinksSelf? self,
  }) {
    return VenuesEmbeddedVenuesLinks()
      ..self = self ?? this.self;
  }
}

VenuesEmbeddedVenuesLinksSelf $VenuesEmbeddedVenuesLinksSelfFromJson(
    Map<String, dynamic> json) {
  final VenuesEmbeddedVenuesLinksSelf venuesEmbeddedVenuesLinksSelf = VenuesEmbeddedVenuesLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    venuesEmbeddedVenuesLinksSelf.href = href;
  }
  return venuesEmbeddedVenuesLinksSelf;
}

Map<String, dynamic> $VenuesEmbeddedVenuesLinksSelfToJson(
    VenuesEmbeddedVenuesLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension VenuesEmbeddedVenuesLinksSelfExtension on VenuesEmbeddedVenuesLinksSelf {
  VenuesEmbeddedVenuesLinksSelf copyWith({
    String? href,
  }) {
    return VenuesEmbeddedVenuesLinksSelf()
      ..href = href ?? this.href;
  }
}

VenuesLinks $VenuesLinksFromJson(Map<String, dynamic> json) {
  final VenuesLinks venuesLinks = VenuesLinks();
  final VenuesLinksFirst? first = jsonConvert.convert<VenuesLinksFirst>(
      json['first']);
  if (first != null) {
    venuesLinks.first = first;
  }
  final VenuesLinksSelf? self = jsonConvert.convert<VenuesLinksSelf>(
      json['self']);
  if (self != null) {
    venuesLinks.self = self;
  }
  final VenuesLinksNext? next = jsonConvert.convert<VenuesLinksNext>(
      json['next']);
  if (next != null) {
    venuesLinks.next = next;
  }
  final VenuesLinksLast? last = jsonConvert.convert<VenuesLinksLast>(
      json['last']);
  if (last != null) {
    venuesLinks.last = last;
  }
  return venuesLinks;
}

Map<String, dynamic> $VenuesLinksToJson(VenuesLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['first'] = entity.first.toJson();
  data['self'] = entity.self.toJson();
  data['next'] = entity.next.toJson();
  data['last'] = entity.last.toJson();
  return data;
}

extension VenuesLinksExtension on VenuesLinks {
  VenuesLinks copyWith({
    VenuesLinksFirst? first,
    VenuesLinksSelf? self,
    VenuesLinksNext? next,
    VenuesLinksLast? last,
  }) {
    return VenuesLinks()
      ..first = first ?? this.first
      ..self = self ?? this.self
      ..next = next ?? this.next
      ..last = last ?? this.last;
  }
}

VenuesLinksFirst $VenuesLinksFirstFromJson(Map<String, dynamic> json) {
  final VenuesLinksFirst venuesLinksFirst = VenuesLinksFirst();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    venuesLinksFirst.href = href;
  }
  return venuesLinksFirst;
}

Map<String, dynamic> $VenuesLinksFirstToJson(VenuesLinksFirst entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension VenuesLinksFirstExtension on VenuesLinksFirst {
  VenuesLinksFirst copyWith({
    String? href,
  }) {
    return VenuesLinksFirst()
      ..href = href ?? this.href;
  }
}

VenuesLinksSelf $VenuesLinksSelfFromJson(Map<String, dynamic> json) {
  final VenuesLinksSelf venuesLinksSelf = VenuesLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    venuesLinksSelf.href = href;
  }
  return venuesLinksSelf;
}

Map<String, dynamic> $VenuesLinksSelfToJson(VenuesLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension VenuesLinksSelfExtension on VenuesLinksSelf {
  VenuesLinksSelf copyWith({
    String? href,
  }) {
    return VenuesLinksSelf()
      ..href = href ?? this.href;
  }
}

VenuesLinksNext $VenuesLinksNextFromJson(Map<String, dynamic> json) {
  final VenuesLinksNext venuesLinksNext = VenuesLinksNext();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    venuesLinksNext.href = href;
  }
  return venuesLinksNext;
}

Map<String, dynamic> $VenuesLinksNextToJson(VenuesLinksNext entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension VenuesLinksNextExtension on VenuesLinksNext {
  VenuesLinksNext copyWith({
    String? href,
  }) {
    return VenuesLinksNext()
      ..href = href ?? this.href;
  }
}

VenuesLinksLast $VenuesLinksLastFromJson(Map<String, dynamic> json) {
  final VenuesLinksLast venuesLinksLast = VenuesLinksLast();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    venuesLinksLast.href = href;
  }
  return venuesLinksLast;
}

Map<String, dynamic> $VenuesLinksLastToJson(VenuesLinksLast entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension VenuesLinksLastExtension on VenuesLinksLast {
  VenuesLinksLast copyWith({
    String? href,
  }) {
    return VenuesLinksLast()
      ..href = href ?? this.href;
  }
}

VenuesPage $VenuesPageFromJson(Map<String, dynamic> json) {
  final VenuesPage venuesPage = VenuesPage();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    venuesPage.size = size;
  }
  final int? totalElements = jsonConvert.convert<int>(json['totalElements']);
  if (totalElements != null) {
    venuesPage.totalElements = totalElements;
  }
  final int? totalPages = jsonConvert.convert<int>(json['totalPages']);
  if (totalPages != null) {
    venuesPage.totalPages = totalPages;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    venuesPage.number = number;
  }
  return venuesPage;
}

Map<String, dynamic> $VenuesPageToJson(VenuesPage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['totalElements'] = entity.totalElements;
  data['totalPages'] = entity.totalPages;
  data['number'] = entity.number;
  return data;
}

extension VenuesPageExtension on VenuesPage {
  VenuesPage copyWith({
    int? size,
    int? totalElements,
    int? totalPages,
    int? number,
  }) {
    return VenuesPage()
      ..size = size ?? this.size
      ..totalElements = totalElements ?? this.totalElements
      ..totalPages = totalPages ?? this.totalPages
      ..number = number ?? this.number;
  }
}